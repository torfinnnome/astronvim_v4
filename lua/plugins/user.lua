--- @type LazySpec
return {
        'ggml-org/llama.vim',
        init = function()
          vim.g.llama_config = {
            endpoint = '',
            api_key = '',
            --- auto_fim = false,
          }
        end,
}
