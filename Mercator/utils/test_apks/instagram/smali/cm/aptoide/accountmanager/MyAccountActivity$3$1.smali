.class Lcm/aptoide/accountmanager/MyAccountActivity$3$1;
.super Lcm/aptoide/pt/utils/SimpleSubscriber;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/MyAccountActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/utils/SimpleSubscriber",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcm/aptoide/accountmanager/MyAccountActivity$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcm/aptoide/accountmanager/MyAccountActivity$3;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;->this$1:Lcm/aptoide/accountmanager/MyAccountActivity$3;

    iput-object p2, p0, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lcm/aptoide/pt/utils/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/accountmanager/MyAccountActivity$3$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 50
    return-void
.end method
