.class Lio/realm/aa$a;
.super Ljava/lang/Object;
.source "RealmList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/aa;
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
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lio/realm/aa;


# direct methods
.method private constructor <init>(Lio/realm/aa;)V
    .locals 1

    .prologue
    .line 775
    iput-object p1, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/aa$a;->a:I

    .line 786
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/aa$a;->b:I

    .line 793
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-static {v0}, Lio/realm/aa;->a(Lio/realm/aa;)I

    move-result v0

    iput v0, p0, Lio/realm/aa$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/aa;Lio/realm/aa$1;)V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lio/realm/aa$a;-><init>(Lio/realm/aa;)V

    return-void
.end method


# virtual methods
.method public a()Lio/realm/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    iget-object v0, v0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 809
    invoke-virtual {p0}, Lio/realm/aa$a;->b()V

    .line 810
    iget v0, p0, Lio/realm/aa$a;->a:I

    .line 812
    :try_start_0
    iget-object v1, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-virtual {v1, v0}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v1

    .line 813
    iput v0, p0, Lio/realm/aa$a;->b:I

    .line 814
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/realm/aa$a;->a:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    return-object v1

    .line 816
    :catch_0
    move-exception v1

    .line 817
    invoke-virtual {p0}, Lio/realm/aa$a;->b()V

    .line 818
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-virtual {v2}, Lio/realm/aa;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final b()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-static {v0}, Lio/realm/aa;->c(Lio/realm/aa;)I

    move-result v0

    iget v1, p0, Lio/realm/aa$a;->c:I

    if-eq v0, v1, :cond_0

    .line 852
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 854
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    iget-object v0, v0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 800
    invoke-virtual {p0}, Lio/realm/aa$a;->b()V

    .line 801
    iget v0, p0, Lio/realm/aa$a;->a:I

    iget-object v1, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-virtual {v1}, Lio/realm/aa;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

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
    .line 775
    invoke-virtual {p0}, Lio/realm/aa$a;->a()Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    iget-object v0, v0, Lio/realm/aa;->d:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 827
    iget v0, p0, Lio/realm/aa$a;->b:I

    if-gez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    invoke-virtual {p0}, Lio/realm/aa$a;->b()V

    .line 833
    :try_start_0
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    iget v1, p0, Lio/realm/aa$a;->b:I

    invoke-virtual {v0, v1}, Lio/realm/aa;->a(I)Lio/realm/ac;

    .line 834
    iget v0, p0, Lio/realm/aa$a;->b:I

    iget v1, p0, Lio/realm/aa$a;->a:I

    if-ge v0, v1, :cond_1

    .line 835
    iget v0, p0, Lio/realm/aa$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/realm/aa$a;->a:I

    .line 837
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/aa$a;->b:I

    .line 838
    iget-object v0, p0, Lio/realm/aa$a;->d:Lio/realm/aa;

    invoke-static {v0}, Lio/realm/aa;->b(Lio/realm/aa;)I

    move-result v0

    iput v0, p0, Lio/realm/aa$a;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
