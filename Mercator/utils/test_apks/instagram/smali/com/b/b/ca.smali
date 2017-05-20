.class public final Lcom/b/b/ca;
.super Lcom/b/b/cc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/ca$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/b/cc;"
    }
.end annotation


# instance fields
.field public a:Lcom/b/b/ca$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/ca$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/b/b/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/co",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/b/b/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/co",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/b/b/cc;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/b/b/ca;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/b/b/ca;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/b/b/ca;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/b/b/ca;->x:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/b/b/ca;)Lcom/b/b/co;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/b/b/ca;->c:Lcom/b/b/co;

    return-object v0
.end method

.method static synthetic c(Lcom/b/b/ca;)Lcom/b/b/co;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/b/b/ca;->d:Lcom/b/b/co;

    return-object v0
.end method

.method static synthetic d(Lcom/b/b/ca;)V
    .locals 2

    .prologue
    .line 14
    .line 2095
    iget-object v0, p0, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/b/b/ca;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    iget-object v1, p0, Lcom/b/b/ca;->x:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/b/b/ca$a;->a(Lcom/b/b/ca;Ljava/lang/Object;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    .line 1067
    new-instance v0, Lcom/b/b/ca$1;

    invoke-direct {v0, p0}, Lcom/b/b/ca$1;-><init>(Lcom/b/b/ca;)V

    .line 1202
    iput-object v0, p0, Lcom/b/b/cc;->k:Lcom/b/b/cc$b;

    .line 62
    invoke-super {p0}, Lcom/b/b/cc;->a()V

    .line 63
    return-void
.end method
