.class Lcom/localytics/android/MarketingWebViewManager$6;
.super Lcom/localytics/android/MarketingCallable;
.source "MarketingWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingWebViewManager;->getJavaScriptCallbacks(Ljava/util/Map;)Landroid/util/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingWebViewManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingWebViewManager;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/localytics/android/MarketingWebViewManager$6;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/MarketingWebViewManager$6;->this$0:Lcom/localytics/android/MarketingWebViewManager;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingWebViewManager;->handleUrl(Ljava/lang/String;)Lcom/localytics/android/MarketingWebViewManager$ProtocolHandleAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 672
    const-string v1, "MarketingCallable ON_MARKETING_JS_NAVIGATE exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
