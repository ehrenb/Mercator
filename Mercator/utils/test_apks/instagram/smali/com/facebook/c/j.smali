.class public final Lcom/facebook/c/j;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/j$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/c/z;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/c/j$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/facebook/c/h;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/c/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/c/z;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/c/j$a;",
            ">;>;Z",
            "Lcom/facebook/c/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/facebook/c/j;->a:Z

    .line 62
    iput-object p2, p0, Lcom/facebook/c/j;->b:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcom/facebook/c/j;->c:Z

    .line 64
    iput-boolean p4, p0, Lcom/facebook/c/j;->d:Z

    .line 65
    iput-object p7, p0, Lcom/facebook/c/j;->g:Ljava/util/Map;

    .line 66
    iput-object p9, p0, Lcom/facebook/c/j;->i:Lcom/facebook/c/h;

    .line 67
    iput p5, p0, Lcom/facebook/c/j;->e:I

    .line 68
    iput-boolean p8, p0, Lcom/facebook/c/j;->h:Z

    .line 69
    iput-object p6, p0, Lcom/facebook/c/j;->f:Ljava/util/EnumSet;

    .line 70
    iput-object p10, p0, Lcom/facebook/c/j;->j:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcom/facebook/c/j;->k:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/c/j;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/c/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/facebook/c/j;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/c/j;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/facebook/c/j;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/facebook/c/j;->h:Z

    return v0
.end method

.method public g()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/c/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/c/j;->f:Ljava/util/EnumSet;

    return-object v0
.end method

.method public h()Lcom/facebook/c/h;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/c/j;->i:Lcom/facebook/c/h;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/c/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/c/j;->k:Ljava/lang/String;

    return-object v0
.end method
