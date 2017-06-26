package todolist.service;

import todolist.model.TaskModel;

import java.util.List;

public interface TaskService {
    long createTask(TaskModel taskModel);

    TaskModel updateTask(TaskModel taskModel);

    void deleteTask(long id);

    List<TaskModel> getAllTasks();

    int getSizeWithFilter(String filter);

    List<TaskModel> getPageWithFilter(String filter, int offset, int pageSize);

    TaskModel getTask(long id);
}
