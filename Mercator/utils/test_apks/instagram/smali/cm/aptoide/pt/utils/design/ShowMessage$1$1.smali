.class Lcm/aptoide/pt/utils/design/ShowMessage$1$1;
.super Landroid/support/design/widget/Snackbar$b;
.source "ShowMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/utils/design/ShowMessage$1;->call(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/utils/design/ShowMessage$1;

.field final synthetic val$subscriber:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/utils/design/ShowMessage$1;Lrx/j;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->this$0:Lcm/aptoide/pt/utils/design/ShowMessage$1;

    iput-object p2, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->val$subscriber:Lrx/j;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/Snackbar$b;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->val$subscriber:Lrx/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onShown(Landroid/support/design/widget/Snackbar;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/design/widget/Snackbar$b;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;->val$subscriber:Lrx/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method
