.class Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;
.super Ljava/lang/Object;
.source "InAppDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v0, v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$900(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$1;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->dismissWithAnimation()V

    .line 538
    :cond_0
    return-void
.end method
