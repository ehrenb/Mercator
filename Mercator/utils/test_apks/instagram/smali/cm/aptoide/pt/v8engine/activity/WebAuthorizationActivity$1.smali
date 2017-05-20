.class Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebAuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->showAuthorization(Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

.field final synthetic val$webAuthorization:Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->val$webAuthorization:Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPageStarted$0()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    # invokes: Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->hideLoadingAndDismiss()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->access$200(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V

    return-void
.end method

.method synthetic lambda$onPageStarted$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    # invokes: Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->hideLoadingAndDismiss()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->access$200(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V

    .line 125
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    # getter for: Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->access$000(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->val$webAuthorization:Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    # getter for: Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->access$000(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    # getter for: Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->access$100(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->val$webAuthorization:Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->getPaymentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->authorize(I)Lrx/a;

    move-result-object v0

    .line 121
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;->this$0:Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    sget-object v2, Lcom/trello/rxlifecycle/a/a;->f:Lcom/trello/rxlifecycle/a/a;

    .line 122
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->bindUntilEvent(Lcom/trello/rxlifecycle/a/a;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/trello/rxlifecycle/b;->a()Lrx/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a$c;)Lrx/a;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;)Lrx/b/a;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;)Lrx/b/b;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/b/a;Lrx/b/b;)Lrx/k;

    .line 128
    :cond_0
    return-void
.end method
