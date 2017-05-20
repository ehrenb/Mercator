.class public Lcm/aptoide/pt/model/v7/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/model/v7/Comment$Parent;,
        Lcm/aptoide/pt/model/v7/Comment$User;
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

.field private id:J

.field private parent:Lcm/aptoide/pt/model/v7/Comment$Parent;

.field private parentReview:Ljava/lang/Long;

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;


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
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/Comment;

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
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/Comment;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/Comment;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/Comment;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParentReview()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getParentReview()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v3

    if-nez v2, :cond_11

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getAdded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Comment;->added:Ljava/util/Date;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Comment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcm/aptoide/pt/model/v7/Comment;->id:J

    return-wide v0
.end method

.method public getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Comment;->parent:Lcm/aptoide/pt/model/v7/Comment$Parent;

    return-object v0
.end method

.method public getParentReview()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Comment;->parentReview:Ljava/lang/Long;

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/Comment;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v1, 0x2b

    .line 15
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParentReview()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_4

    :goto_4
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

    move-result v1

    goto :goto_4
.end method

.method public setAdded(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Comment;->added:Ljava/util/Date;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Comment;->body:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcm/aptoide/pt/model/v7/Comment;->id:J

    return-void
.end method

.method public setParent(Lcm/aptoide/pt/model/v7/Comment$Parent;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Comment;->parent:Lcm/aptoide/pt/model/v7/Comment$Parent;

    return-void
.end method

.method public setParentReview(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Comment;->parentReview:Ljava/lang/Long;

    return-void
.end method

.method public setUser(Lcm/aptoide/pt/model/v7/Comment$User;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/Comment;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comment(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", added="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getAdded()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentReview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParentReview()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Comment;->getParent()Lcm/aptoide/pt/model/v7/Comment$Parent;

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
