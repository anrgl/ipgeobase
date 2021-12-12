# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'open all tasks page' do
    get tasks_path

    assert_response :success
    assert_select 'a', 'Tasks'
    assert_select 'a', 'New task'
    assert_select 'a', 'Task 1'
    assert_select 'a', 'Task 2'
  end

  test 'open taks page' do
    get task_path(tasks(:one))

    assert_response :success
    assert_select 'h2', 'Task 1'
    assert_select 'p', 'Task description'
  end

  test 'open new task page' do
    get new_task_path

    assert_response :success
  end

  test 'create new taks' do
    post tasks_path, params: { task: { name: 'Task 3', status: 're-open', creator: 'PM', performer: 'DEV' } }

    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Task 3'
  end

  test 'falling create new task' do
    post tasks_path, params: { task: { name: '', status: '', creator: '' } }

    assert_response :success
    assert_select 'li', "Name can't be blank"
    assert_select 'li', "Status can't be blank"
    assert_select 'li', "Creator can't be blank"
  end

  test 'update task' do
    patch task_path(tasks(:one)), params: { task: { status: 'close', completed: true } }

    assert_response :redirect
    follow_redirect!
    assert_select 'td', 'close'
    assert_select 'td', 'Yes'
  end

  test 'destroy task' do
    delete task_path(tasks(:one))

    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 1
  end
end
