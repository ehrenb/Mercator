.class Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$2;
.super Landroid/webkit/WebViewClient;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$2;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment$2;->this$0:Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;

    # invokes: Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->finishLoading()V
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;)V

    .line 59
    return-void
.end method
