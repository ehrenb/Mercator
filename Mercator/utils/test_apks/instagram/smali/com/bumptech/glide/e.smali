.class public Lcom/bumptech/glide/e;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/bumptech/glide/g;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/bumptech/glide/d/m;

.field protected final f:Lcom/bumptech/glide/d/g;

.field private g:Lcom/bumptech/glide/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/load/c;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/bumptech/glide/i;

.field private t:Z

.field private u:Lcom/bumptech/glide/g/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/d",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/bumptech/glide/load/b/b;

.field private y:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/h/b;->a()Lcom/bumptech/glide/h/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/c;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/e;->t:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->a()Lcom/bumptech/glide/g/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/e;->v:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/e;->w:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/b/b;->d:Lcom/bumptech/glide/load/b/b;

    iput-object v1, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/b/b;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/d;->a()Lcom/bumptech/glide/load/resource/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/g;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/e;->a:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/d/m;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/d/g;

    .line 103
    if-eqz p3, :cond_0

    new-instance v0, Lcom/bumptech/glide/f/a;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/f/a;-><init>(Lcom/bumptech/glide/f/f;)V

    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    .line 106
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p3, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/e;->a:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    iget-object v6, p3, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/d/m;

    iget-object v7, p3, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/d/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 87
    iget-object v0, p3, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    .line 88
    iget-boolean v0, p3, Lcom/bumptech/glide/e;->j:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    .line 89
    iget-object v0, p3, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/c;

    iput-object v0, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/c;

    .line 90
    iget-object v0, p3, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/b/b;

    iput-object v0, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/b/b;

    .line 91
    iget-boolean v0, p3, Lcom/bumptech/glide/e;->t:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->t:Z

    .line 92
    return-void
.end method

.method private a(Lcom/bumptech/glide/g/b/k;FLcom/bumptech/glide/i;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/k",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/i;",
            "Lcom/bumptech/glide/g/d;",
            ")",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/e;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/e;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/e;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/e;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/e;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/e;->B:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/e;->C:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/e;->m:Lcom/bumptech/glide/g/f;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/g;->b()Lcom/bumptech/glide/load/b/c;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/g;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/e;->t:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/e;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/e;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/b/b;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/g/b;->a(Lcom/bumptech/glide/f/f;Ljava/lang/Object;Lcom/bumptech/glide/load/c;Landroid/content/Context;Lcom/bumptech/glide/i;Lcom/bumptech/glide/g/b/k;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/g/f;Lcom/bumptech/glide/g/d;Lcom/bumptech/glide/load/b/c;Lcom/bumptech/glide/load/g;Ljava/lang/Class;ZLcom/bumptech/glide/g/a/d;IILcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/g/b;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/g/b/k;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/k",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/g/h;",
            ")",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    if-eqz v0, :cond_4

    .line 795
    iget-boolean v0, p0, Lcom/bumptech/glide/e;->A:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v0, v0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    invoke-static {}, Lcom/bumptech/glide/g/a/e;->a()Lcom/bumptech/glide/g/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    iput-object v1, v0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget-object v0, v0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    if-nez v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    invoke-direct {p0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    .line 808
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/e;->w:I

    iget v1, p0, Lcom/bumptech/glide/e;->v:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/i/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget v0, v0, Lcom/bumptech/glide/e;->w:I

    iget-object v1, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget v1, v1, Lcom/bumptech/glide/e;->v:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/i/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    iget v1, p0, Lcom/bumptech/glide/e;->w:I

    iget v2, p0, Lcom/bumptech/glide/e;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    .line 814
    :cond_3
    new-instance v0, Lcom/bumptech/glide/g/h;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/g/h;-><init>(Lcom/bumptech/glide/g/d;)V

    .line 815
    iget-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;FLcom/bumptech/glide/i;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v1

    .line 817
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/e;->A:Z

    .line 819
    iget-object v2, p0, Lcom/bumptech/glide/e;->o:Lcom/bumptech/glide/e;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;

    move-result-object v2

    .line 820
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/e;->A:Z

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/g/h;->a(Lcom/bumptech/glide/g/c;Lcom/bumptech/glide/g/c;)V

    .line 832
    :goto_0
    return-object v0

    .line 823
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/e;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 825
    new-instance v0, Lcom/bumptech/glide/g/h;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/g/h;-><init>(Lcom/bumptech/glide/g/d;)V

    .line 826
    iget-object v1, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;FLcom/bumptech/glide/i;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v1

    .line 827
    iget-object v2, p0, Lcom/bumptech/glide/e;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;FLcom/bumptech/glide/i;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v2

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/g/h;->a(Lcom/bumptech/glide/g/c;Lcom/bumptech/glide/g/c;)V

    goto :goto_0

    .line 832
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/e;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;FLcom/bumptech/glide/i;Lcom/bumptech/glide/g/d;)Lcom/bumptech/glide/g/c;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Lcom/bumptech/glide/i;
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    sget-object v1, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i;

    if-ne v0, v1, :cond_0

    .line 777
    sget-object v0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    .line 783
    :goto_0
    return-object v0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    sget-object v1, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    if-ne v0, v1, :cond_1

    .line 779
    sget-object v0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i;

    goto :goto_0

    .line 781
    :cond_1
    sget-object v0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/i;

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/b/k",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/g/c;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    iput-object v0, p0, Lcom/bumptech/glide/e;->s:Lcom/bumptech/glide/i;

    .line 790
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;Lcom/bumptech/glide/g/h;)Lcom/bumptech/glide/g/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/d",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e;->u:Lcom/bumptech/glide/g/a/d;

    .line 422
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/k",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    sget-object v0, Lcom/bumptech/glide/e$2;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/bumptech/glide/e;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/g;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/b/k;

    move-result-object v0

    return-object v0

    .line 684
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->e()V

    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->d()V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/g/b/k",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/bumptech/glide/i/h;->a()V

    .line 643
    if-nez p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    if-nez v0, :cond_1

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/g/b/k;->a_()Lcom/bumptech/glide/g/c;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_2

    .line 653
    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->d()V

    .line 654
    iget-object v1, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/d/m;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d/m;->b(Lcom/bumptech/glide/g/c;)V

    .line 655
    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->a()V

    .line 658
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/c;

    move-result-object v0

    .line 659
    invoke-interface {p1, v0}, Lcom/bumptech/glide/g/b/k;->a(Lcom/bumptech/glide/g/c;)V

    .line 660
    iget-object v1, p0, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/d/g;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/d/g;->a(Lcom/bumptech/glide/d/h;)V

    .line 661
    iget-object v1, p0, Lcom/bumptech/glide/e;->e:Lcom/bumptech/glide/d/m;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/d/m;->a(Lcom/bumptech/glide/g/c;)V

    .line 663
    return-object p1
.end method

.method public b(I)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 434
    iput p1, p0, Lcom/bumptech/glide/e;->k:I

    .line 436
    return-object p0
.end method

.method public b(II)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {p1, p2}, Lcom/bumptech/glide/i/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e;->w:I

    .line 567
    iput p2, p0, Lcom/bumptech/glide/e;->v:I

    .line 569
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/b;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bumptech/glide/e;->x:Lcom/bumptech/glide/load/b/b;

    .line 273
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/b;)V

    .line 250
    :cond_0
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e;->i:Lcom/bumptech/glide/load/c;

    .line 591
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/load/e;)V

    .line 211
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 606
    iput-object p1, p0, Lcom/bumptech/glide/e;->h:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/e;->j:Z

    .line 608
    return-object p0
.end method

.method public b(Z)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 548
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bumptech/glide/e;->t:Z

    .line 550
    return-object p0

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/g",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/bumptech/glide/e;->z:Z

    .line 323
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/g;

    .line 329
    :goto_0
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/d;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d;-><init>([Lcom/bumptech/glide/load/g;)V

    iput-object v0, p0, Lcom/bumptech/glide/e;->y:Lcom/bumptech/glide/load/g;

    goto :goto_0
.end method

.method public c(II)Lcom/bumptech/glide/g/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/g/a",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 714
    new-instance v0, Lcom/bumptech/glide/g/e;

    iget-object v1, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->g()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/g/e;-><init>(Landroid/os/Handler;II)V

    .line 718
    iget-object v1, p0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/g;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/e$1;

    invoke-direct {v2, p0, v0}, Lcom/bumptech/glide/e$1;-><init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/g/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public f()Lcom/bumptech/glide/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 624
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e;

    .line 626
    iget-object v1, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/a;->g()Lcom/bumptech/glide/f/a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    return-object v0

    .line 626
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
