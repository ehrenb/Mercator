.class Lcom/localytics/android/InAppManager$8;
.super Lcom/localytics/android/MarketingCallable;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->showInAppTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2088
    iput-object p1, p0, Lcom/localytics/android/InAppManager$8;->this$0:Lcom/localytics/android/InAppManager;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$8;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2092
    new-instance v0, Lcom/localytics/android/InAppManager$8$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppManager$8$1;-><init>(Lcom/localytics/android/InAppManager$8;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppManager$8$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2124
    const/4 v0, 0x0

    return-object v0
.end method
