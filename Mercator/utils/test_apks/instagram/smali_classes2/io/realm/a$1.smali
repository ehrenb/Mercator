.class final Lio/realm/a$1;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a;->a(Lio/realm/x;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/x;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/realm/x;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lio/realm/a$1;->a:Lio/realm/x;

    iput-object p2, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    if-eqz p1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/a$1;->a:Lio/realm/x;

    .line 662
    invoke-virtual {v2}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lio/realm/a$1;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v4

    .line 666
    iget-object v0, p0, Lio/realm/a$1;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->a()Ljava/io/File;

    move-result-object v5

    .line 667
    iget-object v0, p0, Lio/realm/a$1;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Ljava/lang/String;

    move-result-object v6

    .line 668
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".management"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 672
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 673
    if-eqz v8, :cond_2

    .line 674
    array-length v9, v8

    move v3, v2

    :goto_0
    if-ge v3, v9, :cond_2

    aget-object v0, v8, v3

    .line 675
    iget-object v10, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v11, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 674
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 675
    goto :goto_1

    .line 678
    :cond_2
    iget-object v3, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 681
    iget-object v0, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lio/realm/a$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v4, v5, v6}, Lio/realm/a;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 682
    return-void

    :cond_3
    move v0, v2

    .line 678
    goto :goto_2

    :cond_4
    move v1, v2

    .line 681
    goto :goto_3
.end method
