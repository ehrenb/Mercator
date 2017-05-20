.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "PostCommentForStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private commentType:Ljava/lang/String;

.field private previousCommentId:Ljava/lang/Long;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment_id"
    .end annotation
.end field

.field private storeId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 52
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->commentType:Ljava/lang/String;

    .line 60
    iput-wide p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->storeId:J

    .line 61
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->body:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;-><init>(JLjava/lang/String;)V

    .line 56
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->previousCommentId:Ljava/lang/Long;

    .line 57
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getStoreId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getStoreId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getPreviousCommentId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getPreviousCommentId()Ljava/lang/Long;

    move-result-object v4

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getBody()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getCommentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getCommentType()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_c

    if-eqz v0, :cond_d

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_d
    move v0, v1

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->commentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousCommentId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->previousCommentId:Ljava/lang/Long;

    return-object v0
.end method

.method public getStoreId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->storeId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 46
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getStoreId()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getPreviousCommentId()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getBody()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getCommentType()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->body:Ljava/lang/String;

    return-void
.end method

.method public setCommentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->commentType:Ljava/lang/String;

    return-void
.end method

.method public setPreviousCommentId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->previousCommentId:Ljava/lang/Long;

    return-void
.end method

.method public setStoreId(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->storeId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCommentForStore.Body(storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getStoreId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousCommentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getPreviousCommentId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;->getCommentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
