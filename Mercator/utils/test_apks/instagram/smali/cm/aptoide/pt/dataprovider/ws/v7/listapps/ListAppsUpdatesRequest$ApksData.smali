.class public Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;
.super Ljava/lang/Object;
.source "ListAppsUpdatesRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApksData"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "package"
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private vercode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->packageName:Ljava/lang/String;

    .line 178
    iput p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->vercode:I

    .line 179
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->signature:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getVercode()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$ApksData;->vercode:I

    return v0
.end method
