docker build -t b.heyalgo .

mkdir ./public
docker run --rm \
  -v $PWD/public:/home/b.heyalgo/public \
  b.heyalgo hexo generate