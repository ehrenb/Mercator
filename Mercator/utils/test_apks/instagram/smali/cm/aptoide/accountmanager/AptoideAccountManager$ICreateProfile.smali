.class public interface abstract Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateProfile;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICreateProfile"
.end annotation


# virtual methods
.method public abstract getUserAvatar()Ljava/lang/String;
.end method

.method public abstract getUserUsername()Ljava/lang/String;
.end method

.method public abstract onRegisterFail(I)V
.end method

.method public abstract onRegisterSuccess(Landroid/app/ProgressDialog;)V
.end method
