.class public interface abstract Lcm/aptoide/accountmanager/AptoideAccountManager$IRegisterUser;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRegisterUser"
.end annotation


# virtual methods
.method public abstract getUserEmail()Ljava/lang/String;
.end method

.method public abstract getUserPassword()Ljava/lang/String;
.end method

.method public abstract onRegisterFail(I)V
.end method

.method public abstract onRegisterSuccess(Landroid/os/Bundle;)V
.end method
