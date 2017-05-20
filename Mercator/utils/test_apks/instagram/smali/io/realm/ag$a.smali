.class Lio/realm/ag$a;
.super Ljava/lang/Object;
.source "RealmResults.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:J

.field b:I

.field final synthetic c:Lio/realm/ag;


# direct methods
.method constructor <init>(Lio/realm/ag;)V
    .locals 2

    .prologue
    .line 709
    iput-object p1, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/ag$a;->a:J

    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/ag$a;->b:I

    .line 710
    invoke-static {p1}, Lio/realm/ag;->a(Lio/realm/ag;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ag$a;->a:J

    .line 711
    return-void
.end method


# virtual methods
.method public a()Lio/realm/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    iget-object v0, v0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 725
    invoke-virtual {p0}, Lio/realm/ag$a;->b()V

    .line 726
    iget v0, p0, Lio/realm/ag$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/ag$a;->b:I

    .line 727
    iget v0, p0, Lio/realm/ag$a;->b:I

    iget-object v1, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    invoke-virtual {v1}, Lio/realm/ag;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 728
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/ag$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    invoke-virtual {v2}, Lio/realm/ag;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    iget-object v0, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    iget v1, p0, Lio/realm/ag$a;->b:I

    invoke-virtual {v0, v1}, Lio/realm/ag;->a(I)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 744
    iget-object v0, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    invoke-static {v0}, Lio/realm/ag;->b(Lio/realm/ag;)Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->n()J

    move-result-wide v0

    .line 750
    iget-object v2, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    iget-object v2, v2, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v2}, Lio/realm/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lio/realm/ag$a;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lio/realm/ag$a;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 751
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "No outside changes to a Realm is allowed while iterating a RealmResults. Don\'t call Realm.refresh() while iterating."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    iput-wide v0, p0, Lio/realm/ag$a;->a:J

    .line 754
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Lio/realm/ag$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/realm/ag$a;->c:Lio/realm/ag;

    invoke-virtual {v1}, Lio/realm/ag;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lio/realm/ag$a;->a()Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
