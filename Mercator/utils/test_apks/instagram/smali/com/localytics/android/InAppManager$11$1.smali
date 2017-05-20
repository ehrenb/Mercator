.class Lcom/localytics/android/InAppManager$11$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$11;->call([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppManager$11;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$11;)V
    .locals 0

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/localytics/android/InAppManager$11$1;->this$1:Lcom/localytics/android/InAppManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2233
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/InAppManager$11$1;->this$1:Lcom/localytics/android/InAppManager$11;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$11;->val$appContext:Landroid/content/Context;

    const-string v1, "Downloading the campaign...\nIt\'ll be shown in few seconds."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :goto_0
    return-void

    .line 2235
    :catch_0
    move-exception v0

    .line 2237
    const-string v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
