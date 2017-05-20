.class final Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;
.super Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
.source "InboxWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InboxWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InboxWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController;Lcom/localytics/android/MarketingWebViewManager;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;->this$0:Lcom/localytics/android/InboxWebViewController;

    .line 293
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    .line 294
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    const-string v0, "[InboxDetailFragment]: onPageFinished"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/localytics/android/InboxWebViewController$InboxWebViewClient;->this$0:Lcom/localytics/android/InboxWebViewController;

    # getter for: Lcom/localytics/android/InboxWebViewController;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v0}, Lcom/localytics/android/InboxWebViewController;->access$500(Lcom/localytics/android/InboxWebViewController;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/JavaScriptClient;->getJavaScriptBridge()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    return-void
.end method
