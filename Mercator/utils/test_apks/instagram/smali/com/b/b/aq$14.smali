.class final Lcom/b/b/aq$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/aq;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/b/b/aq;


# direct methods
.method constructor <init>(Lcom/b/b/aq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/b/b/aq$14;->c:Lcom/b/b/aq;

    iput-object p2, p0, Lcom/b/b/aq$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/b/b/aq$14;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/b/b/a;->a:Lcom/b/b/v;

    .line 664
    iget-object v1, p0, Lcom/b/b/aq$14;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/b/aq$14;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/b/b/v;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 665
    return-void
.end method
