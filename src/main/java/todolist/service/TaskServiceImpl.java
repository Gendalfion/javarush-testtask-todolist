package todolist.service;

import todolist.dao.TaskDao;
import todolist.model.TaskModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskDao taskDao;

    @Override
    public long createTask(TaskModel taskModel){
        return taskDao.createTask(taskModel);
    }

    @Override
    public TaskModel updateTask(TaskModel taskModel){
        return taskDao.updateTask(taskModel);
    }

    @Override
    public void deleteTask(long id){
        taskDao.deleteTask(id);
    }

    @Override
    public List<TaskModel> getAllTasks() {
        return taskDao.getAllTasks();
    }

    @Override
    public int getSizeWithFilter(String filter){
        return taskDao.getSizeWithFilter(filter);
    }

    @Override
    public List<TaskModel> getPageWithFilter(String filter, int offset, int pageSize){
        return taskDao.getPageWithFilter(filter, offset, pageSize);
    }

    @Override
    public TaskModel getTask(long id){
        return taskDao.getTask(id);
    }
}
