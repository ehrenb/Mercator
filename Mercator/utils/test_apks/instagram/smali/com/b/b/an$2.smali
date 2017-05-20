.class final Lcom/b/b/an$2;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/an;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/b/b/an;


# direct methods
.method constructor <init>(Lcom/b/b/an;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/b/b/an$2;->b:Lcom/b/b/an;

    iput p2, p0, Lcom/b/b/an$2;->a:I

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/b/b/an$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {}, Lcom/b/b/a;->a()Lcom/b/b/a;

    .line 1098
    invoke-static {}, Lcom/b/b/a;->b()Lcom/b/b/aq;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    .line 1421
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/b/aq;->j:Z

    .line 172
    :cond_0
    return-void
.end method
