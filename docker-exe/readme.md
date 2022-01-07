# Command to run


```
docker run -it --mount type=bind,source=$(pwd)/mymount,target=/mymount dockerexe
docker run -it -v $(pwd)/mymount:/mymount dockerexe bash
```
- It shows the text in mymount