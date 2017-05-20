.class public interface abstract Lcm/aptoide/accountmanager/AptoideAccountManager$ILoginInterface;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoginInterface"
.end annotation


# virtual methods
.method public abstract getIntroducedPassword()Ljava/lang/String;
.end method

.method public abstract getIntroducedUserName()Ljava/lang/String;
.end method

.method public abstract onLoginFail(Ljava/lang/String;)V
.end method

.method public abstract onLoginSuccess()V
.end method
