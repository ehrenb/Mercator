.class Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$1;
.super Ljava/lang/Object;
.source "CommentDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->setupLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$1;->this$0:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment$1;->this$0:Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;

    # invokes: Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->disableError()V
    invoke-static {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;->access$000(Lcm/aptoide/pt/viewRateAndCommentReviews/CommentDialogFragment;)V

    .line 191
    :cond_0
    return-void
.end method
