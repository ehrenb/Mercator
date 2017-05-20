.class public Lcm/aptoide/pt/v8engine/link/CustomTabsLink;
.super Ljava/lang/Object;
.source "CustomTabsLink.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/link/Link;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/link/CustomTabsLink;->url:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/link/CustomTabsLink;->url:Ljava/lang/String;

    return-object v0
.end method

.method public launch(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->getInstance()Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/link/CustomTabsLink;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->openInChromeCustomTab(Ljava/lang/String;Landroid/content/Context;)V

    .line 20
    return-void
.end method
