.class public Lcm/aptoide/pt/model/v2/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field private answerto:Ljava/lang/Number;

.field private appid:Ljava/lang/Number;

.field private appname:Ljava/lang/String;

.field private id:Ljava/lang/Number;

.field private isShowingSubcomments:Z

.field private lang:Ljava/lang/String;

.field private reponame:Ljava/lang/String;

.field private subComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/model/v2/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private useravatar:Ljava/lang/String;

.field private useridhash:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private votes:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subComments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSubComment(Lcm/aptoide/pt/model/v2/Comment;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public clearSubcomments()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method public getAnswerto()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->answerto:Ljava/lang/Number;

    return-object v0
.end method

.method public getAppid()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->appid:Ljava/lang/Number;

    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->id:Ljava/lang/Number;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getReponame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->reponame:Ljava/lang/String;

    return-object v0
.end method

.method public getSubComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/model/v2/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUseravatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->useravatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUseridhash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->useridhash:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVotes()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->votes:Ljava/lang/Number;

    return-object v0
.end method

.method public hasSubComments()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/model/v2/Comment;->subComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingSubcomments()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcm/aptoide/pt/model/v2/Comment;->isShowingSubcomments:Z

    return v0
.end method

.method public setAnswerto(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->answerto:Ljava/lang/Number;

    .line 99
    return-void
.end method

.method public setAppid(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->appid:Ljava/lang/Number;

    .line 151
    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->appname:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setId(Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->id:Ljava/lang/Number;

    .line 35
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->lang:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setReponame(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->reponame:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setShowingSubcomments(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcm/aptoide/pt/model/v2/Comment;->isShowingSubcomments:Z

    .line 119
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->subject:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->text:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->timestamp:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUseravatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->useravatar:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setUseridhash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->useridhash:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcm/aptoide/pt/model/v2/Comment;->username:Ljava/lang/String;

    .line 91
    return-void
.end method
