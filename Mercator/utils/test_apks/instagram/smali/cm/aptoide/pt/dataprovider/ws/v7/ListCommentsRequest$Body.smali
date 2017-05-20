.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "ListCommentsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private commentType:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private offset:I

.field private order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

.field private q:Ljava/lang/String;

.field private refresh:Z

.field private reviewId:Ljava/lang/Long;

.field private storeId:Ljava/lang/Long;

.field private storePassSha1:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "store_pass_sha1"
    .end annotation
.end field

.field private storeUser:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "store_user"
    .end annotation
.end field

.field private subLimit:J

.field private timelineCardId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "card_uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLcm/aptoide/pt/dataprovider/ws/v7/Order;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 123
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->q:Ljava/lang/String;

    .line 125
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 128
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->subLimit:J

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->limit:Ljava/lang/Integer;

    .line 140
    iput-boolean p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->refresh:Z

    .line 141
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    .line 142
    return-void
.end method

.method public constructor <init>(IZLcm/aptoide/pt/dataprovider/ws/v7/Order;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 123
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->q:Ljava/lang/String;

    .line 125
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 128
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->subLimit:J

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->limit:Ljava/lang/Integer;

    .line 146
    iput-boolean p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->refresh:Z

    .line 147
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    .line 148
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storeUser:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storePassSha1:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(ZLcm/aptoide/pt/dataprovider/ws/v7/Order;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 123
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->q:Ljava/lang/String;

    .line 125
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 128
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->subLimit:J

    .line 134
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->refresh:Z

    .line 135
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    .line 136
    return-void
.end method


# virtual methods
.method public getCommentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->offset:I

    return v0
.end method

.method public getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->reviewId:Ljava/lang/Long;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getStorePassSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storePassSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storeUser:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLimit()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->subLimit:J

    return-wide v0
.end method

.method public getTimelineCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->timelineCardId:Ljava/lang/String;

    return-object v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->refresh:Z

    return v0
.end method

.method public setCommentType(Lcm/aptoide/pt/dataprovider/util/CommentType;)V
    .locals 1

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->offset:I

    .line 158
    return-void
.end method

.method public setOrder(Lcm/aptoide/pt/dataprovider/ws/v7/Order;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    .line 186
    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->q:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->refresh:Z

    .line 170
    return-void
.end method

.method public setReviewId(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->reviewId:Ljava/lang/Long;

    .line 206
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setStoreId(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storeId:Ljava/lang/Long;

    .line 215
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/util/CommentType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->commentType:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setStorePassSha1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storePassSha1:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setStoreUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->storeUser:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSubLimit(J)V
    .locals 1

    .prologue
    .line 239
    iput-wide p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->subLimit:J

    .line 240
    return-void
.end method

.method public setTimelineCardId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;->timelineCardId:Ljava/lang/String;

    .line 248
    return-void
.end method
