.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "CommentDisplayable.java"


# instance fields
.field private final comment:Lcm/aptoide/pt/model/v7/Comment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;->comment:Lcm/aptoide/pt/model/v7/Comment;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/Comment;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;->comment:Lcm/aptoide/pt/model/v7/Comment;

    .line 16
    return-void
.end method


# virtual methods
.method public getComment()Lcm/aptoide/pt/model/v7/Comment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;->comment:Lcm/aptoide/pt/model/v7/Comment;

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->comment_layout:I

    return v0
.end method
