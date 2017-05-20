.class public Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "CommentsReadMoreDisplayable.java"


# instance fields
.field private final commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

.field private final isReview:Z

.field private final next:I

.field private final resourceId:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 22
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;-><init>(JZILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V

    .line 23
    return-void
.end method

.method public constructor <init>(JZILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 27
    iput-object p5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    .line 28
    iput p4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->next:I

    .line 29
    iput-wide p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->resourceId:J

    .line 30
    iput-boolean p3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->isReview:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCommentAdder()Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->commentAdder:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getNext()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->next:I

    return v0
.end method

.method public getResourceId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->resourceId:J

    return-wide v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->comments_read_more_layout:I

    return v0
.end method

.method public isReview()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;->isReview:Z

    return v0
.end method
