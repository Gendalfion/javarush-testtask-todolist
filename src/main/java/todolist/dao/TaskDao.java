package todolist.dao;

import todolist.model.TaskModel;

import java.util.List;

public interface TaskDao {
    long createTask(TaskModel taskModel);

    TaskModel updateTask(TaskModel taskModel);

    void deleteTask(long id);

    TaskModel getTask(long id);

    List<TaskModel> getAllTasks();

    int getSizeWithFilter(String filter);

    List<TaskModel> getPageWithFilter(String filter, int offset, int pageSize);
}
