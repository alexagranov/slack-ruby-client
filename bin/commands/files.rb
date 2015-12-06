# This file was auto-generated by lib/slack/web/api/tasks/generate.rake

desc 'Files methods.'
command 'files' do |g|
  g.desc 'This method deletes a file from your team.'
  g.long_desc %( This method deletes a file from your team. )
  g.command 'delete' do |c|
    c.flag 'file', desc: 'ID of file to delete.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.files_delete(options))
    end
  end

  g.desc 'This method returns information about a file in your team.'
  g.long_desc %( This method returns information about a file in your team. )
  g.command 'info' do |c|
    c.flag 'file', desc: 'File to fetch info for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.files_info(options))
    end
  end

  g.desc 'This method returns a list of files within the team. It can be filtered and sliced in various ways.'
  g.long_desc %( This method returns a list of files within the team. It can be filtered and sliced in various ways. )
  g.command 'list' do |c|
    c.flag 'user', desc: 'Filter files created by a single user.'
    c.flag 'ts_from', desc: 'Filter files created after this timestamp (inclusive).'
    c.flag 'ts_to', desc: 'Filter files created before this timestamp (inclusive).'
    c.flag 'types', desc: 'Filter files by type:

all - All files
posts - Posts
snippets - Snippets
images - Image files
gdocs - Google docs
zips - Zip files
pdfs - PDF files


You can pass multiple values in the types argument, like types=posts,snippets.The default value is all, which does not filter the list.
.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.files_list(options))
    end
  end

  g.desc 'This method allows you to create or upload an existing file.'
  g.long_desc %( This method allows you to create or upload an existing file. )
  g.command 'upload' do |c|
    c.flag 'file', desc: 'File contents via multipart/form-data.'
    c.flag 'content', desc: 'File contents via a POST var.'
    c.flag 'filetype', desc: 'Slack-internal file type identifier.'
    c.flag 'filename', desc: 'Filename of file.'
    c.flag 'title', desc: 'Title of file.'
    c.flag 'initial_comment', desc: 'Initial comment to add to file.'
    c.flag 'channels', desc: 'Comma separated list of channels to share the file into.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.files_upload(options))
    end
  end
end
