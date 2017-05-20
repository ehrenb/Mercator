.class public Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;
.super Ljava/lang/Object;
.source "CacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/filemanager/CacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderToManage"
.end annotation


# instance fields
.field final cacheTime:J

.field final folder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->folder:Ljava/io/File;

    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->cacheTime:J

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 147
    instance-of v0, p1, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getCacheTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getCacheTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->cacheTime:J

    return-wide v0
.end method

.method public getFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->folder:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getCacheTime()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheHelper.FolderToManage(folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/filemanager/CacheHelper$FolderToManage;->getCacheTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
