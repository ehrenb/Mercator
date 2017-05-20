.class public Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
.super Ljava/lang/Object;
.source "AutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/AutoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoUpdateInfo"
.end annotation


# instance fields
.field public appId:I

.field public md5:Ljava/lang/String;

.field public minAptoideVercode:I

.field public minsdk:I

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public vercode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minsdk:I

    .line 191
    iput v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minAptoideVercode:I

    return-void
.end method
