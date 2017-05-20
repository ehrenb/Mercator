.class Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;
.super Landroid/support/a/d;
.source "CustomTabsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->setUpCustomTabsService(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->this$0:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/a/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/a/b;->a(J)Z

    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->this$0:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->this$0:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    # invokes: Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->getSession(Landroid/support/a/b;)Landroid/support/a/e;
    invoke-static {v1, p2}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->access$100(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Landroid/support/a/b;)Landroid/support/a/e;

    move-result-object v1

    # setter for: Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsSession:Landroid/support/a/e;
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->access$002(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Landroid/support/a/e;)Landroid/support/a/e;

    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->this$0:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    # getter for: Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsSession:Landroid/support/a/e;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->access$000(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;)Landroid/support/a/e;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/a/e;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
