.class public interface abstract Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateStore;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICreateStore"
.end annotation


# virtual methods
.method public abstract getRepoAvatar()Ljava/lang/String;
.end method

.method public abstract getRepoDescription()Ljava/lang/String;
.end method

.method public abstract getRepoName()Ljava/lang/String;
.end method

.method public abstract getRepoTheme()Ljava/lang/String;
.end method

.method public abstract onCreateFail(I)V
.end method

.method public abstract onCreateSuccess(Landroid/app/ProgressDialog;)V
.end method
