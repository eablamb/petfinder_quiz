class Quiz

  def self.questions
    new.questions
  end

  def questions
    @questions ||= gather_questions
  end

  private

  def gather_questions
    [
      {
        question:   'Would your ideal cat be independent?',
        keywords:   ['solo','loner','independent'],
        exclusions: ['outgoing','very social']
      },
      {
        question: 'Would your ideal cat be active such as running around the house entertaining you with their antics?',
        keywords: ['energetic','active']
      },
      {
        question: 'Would your ideal cat like to play with toys?',
        keywords: ['playful']
      },
      {
        question: 'Would your ideal cat be affectionate such as by nuzzling you with their head?',
        keywords: ['affectionate','loving','sweet','kiss','very sweet']
      },
      {
        question: 'Would your ideal cat like to lay with you or sleep in your bed?',
        keywords: ['snuggle','cuddle','affectionate']
      },
      {
        question: 'Would your ideal cat like to follow you around?',
        keywords: ['friendly']
      },
      {
        question: 'Do you have children?',
        environment: ['children']
      },
      {
        question: 'Do you have another/other cat(s)?',
        environment: ['cats']
      },
      {
        question: 'Do you have a dog/have dogs?',
        environment: ['dogs']
      }
    ]
  end

end
