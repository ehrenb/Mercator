.class Lcom/localytics/android/InboxWebViewController$1;
.super Ljava/lang/Object;
.source "InboxWebViewController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxWebViewController;->onCreateView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$1;->this$0:Lcom/localytics/android/InboxWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    check-cast p1, Landroid/webkit/WebView;

    .line 151
    packed-switch p2, :pswitch_data_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
