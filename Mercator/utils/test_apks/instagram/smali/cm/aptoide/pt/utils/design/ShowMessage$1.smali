.class final Lcm/aptoide/pt/utils/design/ShowMessage$1;
.super Ljava/lang/Object;
.source "ShowMessage.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$snackbar:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1;->val$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$call$0(Landroid/support/design/widget/Snackbar;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar$b;)Landroid/support/design/widget/Snackbar;

    .line 86
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 87
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage$1;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage$1$1;-><init>(Lcm/aptoide/pt/utils/design/ShowMessage$1;Lrx/j;)V

    .line 82
    iget-object v1, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1;->val$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar$b;)Landroid/support/design/widget/Snackbar;

    .line 84
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1;->val$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage$1$$Lambda$1;->lambdaFactory$(Landroid/support/design/widget/Snackbar;)Lrx/b/a;

    move-result-object v0

    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/utils/design/ShowMessage$1;->val$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 90
    return-void
.end method
