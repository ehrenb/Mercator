.class public Lcm/aptoide/pt/model/v7/Review;
.super Ljava/lang/Object;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/Review$Comments;,
        Lcm/aptoide/pt/model/v7/Review$Stats;,
        Lcm/aptoide/pt/model/v7/Review$User;
    }
.end annotation


# instance fields
.field private added:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd hh:mm:ss"
        timezone = "UTC"
    .end annotation
.end field

.field private body:Ljava/lang/String;

.field private commentList:Lcm/aptoide/pt/model/v7/ListComments;

.field private comments:Lcm/aptoide/pt/model/v7/Review$Comments;

.field private id:J

.field private modified:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd hh:mm:ss"
        timezone = "UTC"
    .end annotation
.end field

.field private stats:Lcm/aptoide/pt/model/v7/Review$Stats;

.field private title:Ljava/lang/String;

.field private user:Lcm/aptoide/pt/model/v7/Review$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Review;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Review;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Review;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Review;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_c

    if-eqz v3, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getModified()Ljava/util/Date;

    move-result-object v3

    if-nez v2, :cond_f

    if-eqz v3, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v3

    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v3

    if-nez v2, :cond_15

    if-eqz v3, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_16
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getComments()Lcm/aptoide/pt/model/v7/Review$Comments;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getComments()Lcm/aptoide/pt/model/v7/Review$Comments;

    move-result-object v3

    if-nez v2, :cond_18

    if-eqz v3, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_19
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v3

    if-nez v2, :cond_1a

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAdded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->added:Ljava/util/Date;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentList()Lcm/aptoide/pt/model/v7/ListComments;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    return-object v0
.end method

.method public getComments()Lcm/aptoide/pt/model/v7/Review$Comments;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->comments:Lcm/aptoide/pt/model/v7/Review$Comments;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/Review;->id:J

    return-wide v0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getStats()Lcm/aptoide/pt/model/v7/Review$Stats;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->stats:Lcm/aptoide/pt/model/v7/Review$Stats;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Review$User;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->user:Lcm/aptoide/pt/model/v7/Review$User;

    return-object v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    .line 29
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    .line 30
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    .line 31
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getModified()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getComments()Lcm/aptoide/pt/model/v7/Review$Comments;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_7

    :goto_7
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

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public setAdded(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->added:Ljava/util/Date;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->body:Ljava/lang/String;

    return-void
.end method

.method public setCommentList(Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->commentList:Lcm/aptoide/pt/model/v7/ListComments;

    return-void
.end method

.method public setComments(Lcm/aptoide/pt/model/v7/Review$Comments;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->comments:Lcm/aptoide/pt/model/v7/Review$Comments;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/Review;->id:J

    return-void
.end method

.method public setModified(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->modified:Ljava/util/Date;

    return-void
.end method

.method public setStats(Lcm/aptoide/pt/model/v7/Review$Stats;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->stats:Lcm/aptoide/pt/model/v7/Review$Stats;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->title:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcm/aptoide/pt/model/v7/Review$User;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Review;->user:Lcm/aptoide/pt/model/v7/Review$User;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Review(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getAdded()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getUser()Lcm/aptoide/pt/model/v7/Review$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getStats()Lcm/aptoide/pt/model/v7/Review$Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getComments()Lcm/aptoide/pt/model/v7/Review$Comments;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
