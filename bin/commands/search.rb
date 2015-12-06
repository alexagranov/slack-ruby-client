# This file was auto-generated by lib/slack/web/api/tasks/generate.rake

desc 'Search methods.'
command 'search' do |g|
  g.desc 'This method allows to to search both messages and files in a single call.'
  g.long_desc %( This method allows to to search both messages and files in a single call. )
  g.command 'all' do |c|
    c.flag 'query', desc: 'Search query. May contains booleans, etc.'
    c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
    c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
    c.flag 'highlight', desc: 'Pass a value of 1 to enable query highlight markers (see below).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.search_all(options))
    end
  end

  g.desc 'This method returns files matching a search query.'
  g.long_desc %( This method returns files matching a search query. )
  g.command 'files' do |c|
    c.flag 'query', desc: 'Search query. May contain booleans, etc.'
    c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
    c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
    c.flag 'highlight', desc: 'Pass a value of 1 to enable query highlight markers (see below).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.search_files(options))
    end
  end

  g.desc 'This method returns messages matching a search query.'
  g.long_desc %( This method returns messages matching a search query. )
  g.command 'messages' do |c|
    c.flag 'query', desc: 'Search query. May contains booleans, etc.'
    c.flag 'sort', desc: 'Return matches sorted by either score or timestamp.'
    c.flag 'sort_dir', desc: 'Change sort direction to ascending (asc) or descending (desc).'
    c.flag 'highlight', desc: 'Pass a value of 1 to enable query highlight markers (see below).'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.search_messages(options))
    end
  end
end
