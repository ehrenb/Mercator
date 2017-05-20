.class public Lio/realm/internal/SharedGroup$b;
.super Ljava/lang/Object;
.source "SharedGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/SharedGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/realm/internal/SharedGroup$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-wide p1, p0, Lio/realm/internal/SharedGroup$b;->a:J

    .line 309
    iput-wide p3, p0, Lio/realm/internal/SharedGroup$b;->b:J

    .line 310
    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/SharedGroup$b;)I
    .locals 4

    .prologue
    .line 314
    iget-wide v0, p0, Lio/realm/internal/SharedGroup$b;->a:J

    iget-wide v2, p1, Lio/realm/internal/SharedGroup$b;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/SharedGroup$b;->a:J

    iget-wide v2, p1, Lio/realm/internal/SharedGroup$b;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 317
    const/4 v0, -0x1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 303
    check-cast p1, Lio/realm/internal/SharedGroup$b;

    invoke-virtual {p0, p1}, Lio/realm/internal/SharedGroup$b;->a(Lio/realm/internal/SharedGroup$b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    if-ne p0, p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 335
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 337
    :cond_4
    check-cast p1, Lio/realm/internal/SharedGroup$b;

    .line 338
    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->a:J

    iget-wide v4, p1, Lio/realm/internal/SharedGroup$b;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->b:J

    iget-wide v4, p1, Lio/realm/internal/SharedGroup$b;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 343
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 344
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->a:J

    iget-wide v4, p0, Lio/realm/internal/SharedGroup$b;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 345
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->b:J

    iget-wide v4, p0, Lio/realm/internal/SharedGroup$b;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 346
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionID{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/internal/SharedGroup$b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
