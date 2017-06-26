package todolist.dao;

import todolist.model.TaskModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import todolist.utils.DbWorker;

import java.util.List;

@Repository
public class TaskDaoImpl implements TaskDao {

    @Autowired
    private DbWorker dbWorker;

    @Override
    public long createTask(TaskModel taskModel){
        return (long) dbWorker.create(taskModel);
    }

    @Override
    public TaskModel updateTask(TaskModel taskModel){
        return dbWorker.update(taskModel);
    }

    @Override
    public void deleteTask(long id) {
        TaskModel taskModel = new TaskModel();
        taskModel.setId(id);
        dbWorker.delete(taskModel);
    }

    @Override
    public TaskModel getTask(long id){
        return dbWorker.fetchById(id, TaskModel.class);
    }

    @Override
    public List<TaskModel> getAllTasks(){
        return dbWorker.fetchAll(TaskModel.class);
    }

    @Override
    public int getSizeWithFilter(String filter) {
        filter = setSQLFilter(filter);
        return dbWorker.getSizeWithFilter(TaskModel.class, filter);
    }

    @Override
    public List<TaskModel> getPageWithFilter(String filter, int offset, int pageSize){
        filter = setSQLFilter(filter);
        return dbWorker.fetchPageWithFilter(TaskModel.class, filter, offset, pageSize);
    }

    private String setSQLFilter(String filter){
        switch (filter){
            case "done":
                filter =" WHERE done=" + true;
                break;
            case "undone":
                filter = " WHERE done=" + false;
                break;
            default:
                filter = "";
        }
        return filter;
    }
}
