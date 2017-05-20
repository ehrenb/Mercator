.class Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$1;
.super Ljava/lang/Object;
.source "ListReviewsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/networkclient/okhttp/UserAgentGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferences;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
