.class Lio/realm/ag$b;
.super Lio/realm/ag$a;
.source "RealmResults.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/ag",
        "<TE;>.a;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lio/realm/ag;


# direct methods
.method constructor <init>(Lio/realm/ag;I)V
    .locals 3

    .prologue
    .line 760
    iput-object p1, p0, Lio/realm/ag$b;->d:Lio/realm/ag;

    invoke-direct {p0, p1}, Lio/realm/ag$a;-><init>(Lio/realm/ag;)V

    .line 761
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/ag;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 762
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lio/realm/ag$b;->b:I

    .line 766
    return-void

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/ag;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Yours was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Adding an element is not supported. Use Realm.createObject() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 758
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/ag$b;->a(Lio/realm/ac;)V

    return-void
.end method

.method public b(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Replacing and element is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lio/realm/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lio/realm/ag$b;->d:Lio/realm/ag;

    iget-object v0, v0, Lio/realm/ag;->a:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 801
    invoke-virtual {p0}, Lio/realm/ag$b;->b()V

    .line 803
    :try_start_0
    iget-object v0, p0, Lio/realm/ag$b;->d:Lio/realm/ag;

    iget v1, p0, Lio/realm/ag$b;->b:I

    invoke-virtual {v0, v1}, Lio/realm/ag;->a(I)Lio/realm/ac;

    move-result-object v0

    .line 804
    iget v1, p0, Lio/realm/ag$b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/realm/ag$b;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    return-object v0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access index less than zero. This was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/ag$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lio/realm/ag$b;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lio/realm/ag$b;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lio/realm/ag$b;->c()Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lio/realm/ag$b;->b:I

    return v0
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 758
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/ag$b;->b(Lio/realm/ac;)V

    return-void
.end method
