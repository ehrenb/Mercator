.class Lio/realm/aa$b;
.super Lio/realm/aa$a;
.source "RealmList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/aa",
        "<TE;>.a;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lio/realm/aa;


# direct methods
.method constructor <init>(Lio/realm/aa;I)V
    .locals 3

    .prologue
    .line 859
    iput-object p1, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/aa$a;-><init>(Lio/realm/aa;Lio/realm/aa$1;)V

    .line 860
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/realm/aa;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 861
    iput p2, p0, Lio/realm/aa$b;->a:I

    .line 865
    return-void

    .line 863
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting location must be a valid index: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/aa;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Index was "

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

    .prologue
    .line 908
    iget-object v0, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    iget-object v0, v0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 909
    iget v0, p0, Lio/realm/aa$b;->b:I

    if-gez v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 912
    :cond_0
    invoke-virtual {p0}, Lio/realm/aa$b;->b()V

    .line 915
    :try_start_0
    iget-object v0, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    iget v1, p0, Lio/realm/aa$b;->b:I

    invoke-virtual {v0, v1, p1}, Lio/realm/aa;->b(ILio/realm/ac;)Lio/realm/ac;

    .line 916
    iget-object v0, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    invoke-static {v0}, Lio/realm/aa;->d(Lio/realm/aa;)I

    move-result v0

    iput v0, p0, Lio/realm/aa$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 857
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/aa$b;->b(Lio/realm/ac;)V

    return-void
.end method

.method public b(Lio/realm/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    iget-object v0, v0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 930
    invoke-virtual {p0}, Lio/realm/aa$b;->b()V

    .line 932
    :try_start_0
    iget v0, p0, Lio/realm/aa$b;->a:I

    .line 933
    iget-object v1, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    invoke-virtual {v1, v0, p1}, Lio/realm/aa;->a(ILio/realm/ac;)V

    .line 934
    const/4 v1, -0x1

    iput v1, p0, Lio/realm/aa$b;->b:I

    .line 935
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/aa$b;->a:I

    .line 936
    iget-object v0, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    invoke-static {v0}, Lio/realm/aa;->e(Lio/realm/aa;)I

    move-result v0

    iput v0, p0, Lio/realm/aa$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public c()Lio/realm/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p0}, Lio/realm/aa$b;->b()V

    .line 879
    iget v0, p0, Lio/realm/aa$b;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 881
    :try_start_0
    iget-object v1, p0, Lio/realm/aa$b;->e:Lio/realm/aa;

    invoke-virtual {v1, v0}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v1

    .line 882
    iput v0, p0, Lio/realm/aa$b;->a:I

    iput v0, p0, Lio/realm/aa$b;->b:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    return-object v1

    .line 884
    :catch_0
    move-exception v1

    .line 885
    invoke-virtual {p0}, Lio/realm/aa$b;->b()V

    .line 886
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index less than zero. This was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Remember to check hasPrevious() before using previous()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lio/realm/aa$b;->a:I

    if-eqz v0, :cond_0

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
    .line 894
    iget v0, p0, Lio/realm/aa$b;->a:I

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lio/realm/aa$b;->c()Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lio/realm/aa$b;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 857
    check-cast p1, Lio/realm/ac;

    invoke-virtual {p0, p1}, Lio/realm/aa$b;->a(Lio/realm/ac;)V

    return-void
.end method
