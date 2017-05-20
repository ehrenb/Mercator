.class final Lio/realm/a$2;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a;->a(Lio/realm/x;Lio/realm/ab;Lio/realm/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/x;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lio/realm/ab;

.field final synthetic d:Lio/realm/a$a;


# direct methods
.method constructor <init>(Lio/realm/x;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/ab;Lio/realm/a$a;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lio/realm/a$2;->a:Lio/realm/x;

    iput-object p2, p0, Lio/realm/a$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/realm/a$2;->c:Lio/realm/ab;

    iput-object p4, p0, Lio/realm/a$2;->d:Lio/realm/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 725
    if-eqz p1, :cond_0

    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot migrate a Realm file that is already open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/a$2;->a:Lio/realm/x;

    .line 727
    invoke-virtual {v2}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/realm/a$2;->a:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lio/realm/a$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 756
    :cond_1
    :goto_0
    return-void

    .line 736
    :cond_2
    iget-object v0, p0, Lio/realm/a$2;->c:Lio/realm/ab;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/realm/a$2;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Lio/realm/ab;

    move-result-object v0

    .line 737
    :goto_1
    const/4 v1, 0x0

    .line 739
    :try_start_0
    iget-object v2, p0, Lio/realm/a$2;->a:Lio/realm/x;

    invoke-static {v2}, Lio/realm/e;->b(Lio/realm/x;)Lio/realm/e;

    move-result-object v1

    .line 740
    invoke-virtual {v1}, Lio/realm/e;->c()V

    .line 741
    invoke-virtual {v1}, Lio/realm/e;->j()J

    move-result-wide v2

    .line 742
    iget-object v4, p0, Lio/realm/a$2;->a:Lio/realm/x;

    invoke-virtual {v4}, Lio/realm/x;->d()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lio/realm/ab;->migrate(Lio/realm/e;JJ)V

    .line 743
    iget-object v0, p0, Lio/realm/a$2;->a:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/e;->a(J)V

    .line 744
    invoke-virtual {v1}, Lio/realm/e;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    if-eqz v1, :cond_1

    .line 752
    invoke-virtual {v1}, Lio/realm/e;->close()V

    .line 753
    iget-object v0, p0, Lio/realm/a$2;->d:Lio/realm/a$a;

    invoke-interface {v0}, Lio/realm/a$a;->a()V

    goto :goto_0

    .line 736
    :cond_3
    iget-object v0, p0, Lio/realm/a$2;->c:Lio/realm/ab;

    goto :goto_1

    .line 745
    :catch_0
    move-exception v0

    .line 746
    if-eqz v1, :cond_4

    .line 747
    :try_start_1
    invoke-virtual {v1}, Lio/realm/e;->e()V

    .line 749
    :cond_4
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 752
    invoke-virtual {v1}, Lio/realm/e;->close()V

    .line 753
    iget-object v1, p0, Lio/realm/a$2;->d:Lio/realm/a$a;

    invoke-interface {v1}, Lio/realm/a$a;->a()V

    :cond_5
    throw v0
.end method
