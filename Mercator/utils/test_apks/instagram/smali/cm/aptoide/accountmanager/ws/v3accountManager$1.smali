.class Lcm/aptoide/accountmanager/ws/v3accountManager$1;
.super Ljava/lang/Object;
.source "v3accountManager.java"

# interfaces
.implements Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/ws/v3accountManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
