.class final Lcm/aptoide/pt/v8engine/V8Engine$1;
.super Ljava/lang/Object;
.source "V8Engine.java"

# interfaces
.implements Lcm/aptoide/pt/actions/UserData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/V8Engine;->regenerateUserAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
