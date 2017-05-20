.class public abstract Lcm/aptoide/pt/dataprovider/DataProvider;
.super Lcm/aptoide/pt/preferences/Application;
.source "DataProvider.java"


# static fields
.field private static tokenInvalidator:Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/preferences/Application;-><init>()V

    return-void
.end method

.method public static invalidateAccessToken()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcm/aptoide/pt/dataprovider/DataProvider;->tokenInvalidator:Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;

    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;->invalidateAccessToken(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract getTokenInvalidator()Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcm/aptoide/pt/preferences/Application;->onCreate()V

    .line 24
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/DataProvider;->getTokenInvalidator()Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/dataprovider/DataProvider;->tokenInvalidator:Lcm/aptoide/pt/dataprovider/interfaces/TokenInvalidator;

    .line 25
    return-void
.end method
