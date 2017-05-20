.class final Landroid/support/v4/app/m;
.super Landroid/support/v4/app/ad;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/y$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/m$b;,
        Landroid/support/v4/app/m$a;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v4/app/z;

.field c:Landroid/support/v4/app/m$a;

.field d:Landroid/support/v4/app/m$a;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:I

.field q:I

.field r:Ljava/lang/CharSequence;

.field s:I

.field t:Ljava/lang/CharSequence;

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/z;)V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v4/app/ad;-><init>()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->m:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/m;->p:I

    .line 363
    iput-object p1, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 364
    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/m$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/m$b;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1101
    new-instance v2, Landroid/support/v4/app/m$b;

    invoke-direct {v2, p0}, Landroid/support/v4/app/m$b;-><init>(Landroid/support/v4/app/m;)V

    .line 1106
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/m$b;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1110
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1111
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1112
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/m$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1110
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1119
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1120
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1121
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1122
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/m$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1119
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1128
    :cond_2
    if-nez v8, :cond_3

    .line 1129
    const/4 v2, 0x0

    .line 1132
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/m$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1172
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    .line 1173
    iget-object v1, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/ae;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1175
    if-eqz p3, :cond_2

    .line 1176
    iget-object v1, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->a(Ljava/util/Collection;)Z

    .line 1183
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1184
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    if-eqz v1, :cond_1

    .line 1185
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1188
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V

    .line 1197
    :goto_1
    return-object v0

    .line 1178
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;

    move-result-object v0

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/az;

    if-eqz v1, :cond_4

    .line 1191
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/az;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1194
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    invoke-virtual {p2}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    :goto_0
    return-object p2

    .line 1411
    :cond_0
    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1}, Landroid/support/v4/f/a;-><init>()V

    .line 1412
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1413
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1414
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1415
    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1419
    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1156
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1136
    if-nez p0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1140
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1139
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/f/a;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1163
    if-eqz p0, :cond_0

    .line 1165
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1164
    invoke-static {p0, v0, p2, p3, p4}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 1167
    :cond_0
    return-object p0
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 431
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 433
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must be a public static class to be  properly recreated from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/z;

    .line 442
    if-eqz p3, :cond_3

    .line 443
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_2
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 451
    :cond_3
    if-eqz p1, :cond_6

    .line 452
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_4
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v0, :cond_5

    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v0, p1, :cond_5

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_5
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 464
    :cond_6
    new-instance v0, Landroid/support/v4/app/m$a;

    invoke-direct {v0}, Landroid/support/v4/app/m$a;-><init>()V

    .line 465
    iput p4, v0, Landroid/support/v4/app/m$a;->c:I

    .line 466
    iput-object p2, v0, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 467
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    .line 468
    return-void
.end method

.method private a(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1510
    iget-object v1, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1511
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1512
    iget-object v0, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1513
    iget-object v1, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1514
    invoke-virtual {p2, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1515
    if-eqz v1, :cond_0

    .line 1516
    invoke-static {v1}, Landroid/support/v4/app/ae;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1517
    if-eqz p3, :cond_2

    .line 1518
    iget-object v4, p1, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1510
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1520
    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1524
    :cond_3
    return-void
.end method

.method private a(Landroid/support/v4/app/m$b;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1317
    if-eqz p3, :cond_0

    .line 1318
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    new-instance v0, Landroid/support/v4/app/m$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Landroid/support/v4/app/m$2;-><init>(Landroid/support/v4/app/m;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/m$b;Ljava/lang/Object;Ljava/lang/Object;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1350
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/m$b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    .line 1500
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1501
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1502
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1503
    iget-object v3, p0, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1506
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1486
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1487
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1488
    invoke-virtual {p0, v0}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1489
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/f/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_0
    :goto_1
    return-void

    .line 1487
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1493
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    if-eqz p2, :cond_1

    .line 811
    iget v0, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 812
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 813
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 818
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/m$b;ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 1451
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Landroid/support/v4/app/m$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/m$3;-><init>(Landroid/support/v4/app/m;Landroid/view/View;Landroid/support/v4/app/m$b;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1460
    return-void
.end method

.method private a(ILandroid/support/v4/app/m$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/m$b;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v4, v4, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/v;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/v;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1215
    if-nez v6, :cond_0

    .line 1216
    const/4 v4, 0x0

    .line 1309
    :goto_0
    return v4

    .line 1218
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1219
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 1221
    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 1222
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1224
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v13

    .line 1225
    const/16 v22, 0x0

    .line 1226
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    if-eqz v7, :cond_3

    .line 1228
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/f/a;

    move-result-object v22

    .line 1229
    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1230
    const/4 v7, 0x0

    .line 1231
    const/16 v22, 0x0

    move-object/from16 v30, v7

    .line 1247
    :goto_1
    if-nez v12, :cond_5

    if-nez v30, :cond_5

    if-nez v13, :cond_5

    .line 1249
    const/4 v4, 0x0

    goto :goto_0

    .line 1234
    :cond_1
    if-eqz p3, :cond_4

    iget-object v4, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    .line 1237
    :goto_2
    if-eqz v4, :cond_2

    .line 1238
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1239
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/f/a;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1240
    const/4 v14, 0x0

    invoke-virtual {v4, v5, v10, v14}, Landroid/support/v4/app/az;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1242
    invoke-direct/range {v4 .. v13}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v30, v7

    goto :goto_1

    .line 1234
    :cond_4
    iget-object v4, v8, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    goto :goto_2

    .line 1252
    :cond_5
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/m$b;->d:Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v13, v9, v0, v1, v4}, Landroid/support/v4/app/m;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/f/a;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v14

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    if-eqz v22, :cond_7

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1259
    if-eqz v4, :cond_7

    .line 1260
    if-eqz v14, :cond_6

    .line 1261
    invoke-static {v14, v4}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1263
    :cond_6
    if-eqz v30, :cond_7

    .line 1264
    move-object/from16 v0, v30

    invoke-static {v0, v4}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1270
    :cond_7
    new-instance v16, Landroid/support/v4/app/m$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Landroid/support/v4/app/m$1;-><init>(Landroid/support/v4/app/m;Landroid/support/v4/app/Fragment;)V

    .line 1278
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v23, Landroid/support/v4/f/a;

    invoke-direct/range {v23 .. v23}, Landroid/support/v4/f/a;-><init>()V

    .line 1281
    const/4 v4, 0x1

    .line 1282
    if-eqz v8, :cond_8

    .line 1283
    if-eqz p3, :cond_a

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v4

    .line 1286
    :cond_8
    :goto_3
    move-object/from16 v0, v30

    invoke-static {v12, v14, v0, v4}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v32

    .line 1289
    if-eqz v32, :cond_9

    .line 1290
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/m$b;->d:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/m$b;->c:Landroid/support/v4/app/ae$a;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    move-object/from16 v19, v0

    move-object/from16 v13, v30

    move-object v15, v6

    move-object/from16 v24, v11

    invoke-static/range {v12 .. v24}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/ae$b;Landroid/view/View;Landroid/support/v4/app/ae$a;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1294
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v32

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/support/v4/app/m;->a(Landroid/view/View;Landroid/support/v4/app/m$b;ILjava/lang/Object;)V

    .line 1298
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/m$b;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1300
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;ILjava/lang/Object;)V

    .line 1302
    move-object/from16 v0, v32

    invoke-static {v6, v0}, Landroid/support/v4/app/ae;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1304
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/m$b;->d:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/m$b;->b:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v24, v6

    move-object/from16 v26, v12

    move-object/from16 v27, v20

    move-object/from16 v28, v14

    move-object/from16 v29, v21

    move-object/from16 v31, v11

    move-object/from16 v34, v23

    invoke-static/range {v24 .. v34}, Landroid/support/v4/app/ae;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1309
    :cond_9
    if-eqz v32, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_a
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v4

    goto :goto_3

    .line 1309
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v4/app/m$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    .line 1434
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1435
    if-eqz v1, :cond_0

    .line 1436
    iget-object v2, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1437
    invoke-static {v0, v1}, Landroid/support/v4/app/ae;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1438
    if-eqz p3, :cond_1

    .line 1439
    iget-object v1, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;

    move-result-object v0

    .line 1446
    :cond_0
    :goto_0
    return-object v0

    .line 1442
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->a(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const/4 v0, 0x0

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 1147
    :goto_1
    invoke-static {v0}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1528
    invoke-virtual {p2}, Landroid/support/v4/f/a;->size()I

    move-result v3

    .line 1529
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1530
    invoke-virtual {p2, v2}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1531
    invoke-virtual {p2, v2}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/ae;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    if-eqz p3, :cond_0

    .line 1533
    iget-object v4, p1, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1535
    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/m$b;->a:Landroid/support/v4/f/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1538
    :cond_1
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    :cond_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    move-object v3, v0

    .line 858
    :goto_0
    if-eqz v3, :cond_0

    .line 859
    iget v0, v3, Landroid/support/v4/app/m$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/m$a;->a:Landroid/support/v4/app/m$a;

    move-object v3, v0

    goto :goto_0

    .line 861
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 864
    :pswitch_1
    iget-object v1, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 865
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 866
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 867
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 868
    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 869
    :cond_2
    if-ne v0, v2, :cond_4

    .line 870
    const/4 v2, 0x0

    .line 871
    iget v0, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 873
    :cond_4
    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 878
    :cond_5
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 882
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 885
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 888
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 891
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 894
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 859
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 826
    if-eqz p3, :cond_2

    .line 827
    iget v0, p3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 828
    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    invoke-virtual {p2, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_1

    .line 833
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 836
    :cond_1
    iget v0, p3, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v0, v0, Landroid/support/v4/app/z;->n:I

    if-lt v0, v2, :cond_2

    .line 837
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/z;->d(Landroid/support/v4/app/Fragment;)V

    .line 838
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    move-object v1, p3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 841
    :cond_2
    return-void
.end method


# virtual methods
.method a(Z)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-boolean v0, p0, Landroid/support/v4/app/m;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_1

    .line 685
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Landroid/support/v4/f/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/d;-><init>(Ljava/lang/String;)V

    .line 687
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    const-string v0, "  "

    invoke-virtual {p0, v0, v3, v1, v3}, Landroid/support/v4/app/m;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 690
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->o:Z

    .line 691
    iget-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/m;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/m;->p:I

    .line 696
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/z;->a(Ljava/lang/Runnable;Z)V

    .line 697
    iget v0, p0, Landroid/support/v4/app/m;->p:I

    return v0

    .line 694
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/m;->p:I

    goto :goto_0
.end method

.method public a()Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 599
    iget-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/m;->m:Z

    .line 604
    return-object p0
.end method

.method public a(IIII)Landroid/support/v4/app/ad;
    .locals 0

    .prologue
    .line 543
    iput p1, p0, Landroid/support/v4/app/m;->f:I

    .line 544
    iput p2, p0, Landroid/support/v4/app/m;->g:I

    .line 545
    iput p3, p0, Landroid/support/v4/app/m;->h:I

    .line 546
    iput p4, p0, Landroid/support/v4/app/m;->i:I

    .line 547
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 421
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ad;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 427
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 487
    new-instance v0, Landroid/support/v4/app/m$a;

    invoke-direct {v0}, Landroid/support/v4/app/m$a;-><init>()V

    .line 488
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/m$a;->c:I

    .line 489
    iput-object p1, v0, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 490
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    .line 492
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 414
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 415
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/support/v4/app/m;->m:Z

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    .line 588
    iput-object p1, p0, Landroid/support/v4/app/m;->n:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public a(ZLandroid/support/v4/app/m$b;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/m$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/m$b;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/m$b;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 953
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    .line 954
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v0, Landroid/support/v4/f/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/d;-><init>(Ljava/lang/String;)V

    .line 956
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 957
    const-string v0, "  "

    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/m;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 960
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v0, v0, Landroid/support/v4/app/z;->n:I

    if-lt v0, v9, :cond_2

    .line 961
    if-nez p2, :cond_3

    .line 962
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    :cond_1
    invoke-direct {p0, p3, p4, v9}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/m$b;

    move-result-object p2

    .line 970
    :cond_2
    :goto_0
    invoke-virtual {p0, v10}, Landroid/support/v4/app/m;->a(I)V

    .line 972
    if-eqz p2, :cond_4

    move v7, v2

    .line 973
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 974
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    move-object v6, v0

    .line 975
    :goto_3
    if-eqz v6, :cond_a

    .line 976
    if-eqz p2, :cond_6

    move v5, v2

    .line 977
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 978
    :goto_5
    iget v3, v6, Landroid/support/v4/app/m$a;->c:I

    packed-switch v3, :pswitch_data_0

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/m$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_3
    if-nez p1, :cond_2

    .line 966
    iget-object v0, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/m;->u:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 972
    :cond_4
    iget v0, p0, Landroid/support/v4/app/m;->k:I

    move v7, v0

    goto :goto_1

    .line 973
    :cond_5
    iget v0, p0, Landroid/support/v4/app/m;->j:I

    move v1, v0

    goto :goto_2

    .line 976
    :cond_6
    iget v0, v6, Landroid/support/v4/app/m$a;->g:I

    move v5, v0

    goto :goto_4

    .line 977
    :cond_7
    iget v0, v6, Landroid/support/v4/app/m$a;->h:I

    goto :goto_5

    .line 980
    :pswitch_0
    iget-object v3, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 981
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 982
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 983
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v5

    .line 982
    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;II)V

    .line 1034
    :cond_8
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/m$a;->b:Landroid/support/v4/app/m$a;

    move-object v6, v0

    .line 1035
    goto :goto_3

    .line 986
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 987
    if-eqz v3, :cond_9

    .line 988
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 989
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 990
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v8

    .line 989
    invoke-virtual {v0, v3, v8, v7}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;II)V

    .line 992
    :cond_9
    iget-object v0, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 993
    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 994
    iget-object v0, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 995
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 996
    iget-object v8, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v8, v0, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 993
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 1001
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 1002
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1003
    iget-object v3, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 1006
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 1007
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1008
    iget-object v3, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 1009
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v5

    .line 1008
    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/z;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1012
    :pswitch_4
    iget-object v3, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 1013
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1014
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 1015
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v5

    .line 1014
    invoke-virtual {v0, v3, v5, v7}, Landroid/support/v4/app/z;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1018
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 1019
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1020
    iget-object v3, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 1021
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v5

    .line 1020
    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/z;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1024
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 1025
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 1026
    iget-object v3, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    .line 1027
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v5

    .line 1026
    invoke-virtual {v3, v0, v5, v7}, Landroid/support/v4/app/z;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 1037
    :cond_a
    if-eqz p1, :cond_b

    .line 1038
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v2, v2, Landroid/support/v4/app/z;->n:I

    .line 1039
    invoke-static {v1}, Landroid/support/v4/app/z;->e(I)I

    move-result v1

    .line 1038
    invoke-virtual {v0, v2, v1, v7, v9}, Landroid/support/v4/app/z;->a(IIIZ)V

    move-object p2, v4

    .line 1043
    :cond_b
    iget v0, p0, Landroid/support/v4/app/m;->p:I

    if-ltz v0, :cond_c

    .line 1044
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v1, p0, Landroid/support/v4/app/m;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/z;->d(I)V

    .line 1045
    iput v10, p0, Landroid/support/v4/app/m;->p:I

    .line 1047
    :cond_c
    return-object p2

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method a(Landroid/support/v4/app/m$b;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1378
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/m$b;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/f/a;

    move-result-object v0

    .line 1382
    if-eqz p2, :cond_1

    .line 1383
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/az;

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/az;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1387
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V

    .line 1395
    :goto_0
    return-object v0

    .line 1389
    :cond_1
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    if-eqz v1, :cond_2

    .line 1390
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    iget-object v2, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 1393
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/m$b;Landroid/support/v4/f/a;Z)V

    goto :goto_0
.end method

.method a(I)V
    .locals 6

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    if-nez v0, :cond_1

    .line 658
    :cond_0
    return-void

    .line 639
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    move-object v2, v0

    .line 642
    :goto_0
    if-eqz v2, :cond_0

    .line 643
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 645
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 649
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 650
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 651
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 652
    sget-boolean v3, Landroid/support/v4/app/z;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 656
    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/m$a;->a:Landroid/support/v4/app/m$a;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method a(Landroid/support/v4/app/m$a;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    if-nez v0, :cond_0

    .line 399
    iput-object p1, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    iput-object p1, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    .line 405
    :goto_0
    iget v0, p0, Landroid/support/v4/app/m;->f:I

    iput v0, p1, Landroid/support/v4/app/m$a;->e:I

    .line 406
    iget v0, p0, Landroid/support/v4/app/m;->g:I

    iput v0, p1, Landroid/support/v4/app/m$a;->f:I

    .line 407
    iget v0, p0, Landroid/support/v4/app/m;->h:I

    iput v0, p1, Landroid/support/v4/app/m$a;->g:I

    .line 408
    iget v0, p0, Landroid/support/v4/app/m;->i:I

    iput v0, p1, Landroid/support/v4/app/m$a;->h:I

    .line 409
    iget v0, p0, Landroid/support/v4/app/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/m;->e:I

    .line 410
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    iput-object v0, p1, Landroid/support/v4/app/m$a;->b:Landroid/support/v4/app/m$a;

    .line 402
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    iput-object p1, v0, Landroid/support/v4/app/m$a;->a:Landroid/support/v4/app/m$a;

    .line 403
    iput-object p1, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    goto :goto_0
.end method

.method a(Landroid/support/v4/app/m$b;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1463
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1464
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1465
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1466
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v3, p2, :cond_0

    .line 1468
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1469
    iget-object v3, p1, Landroid/support/v4/app/m$b;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1470
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1472
    iget-object v3, p1, Landroid/support/v4/app/m$b;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1475
    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/ae;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1477
    iget-object v3, p1, Landroid/support/v4/app/m$b;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1482
    :cond_2
    return-void
.end method

.method a(Landroid/support/v4/app/m$b;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/f/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m$b;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1354
    if-eqz p4, :cond_1

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    .line 1357
    :goto_0
    if-eqz v0, :cond_0

    .line 1358
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1359
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/f/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1360
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/az;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1362
    :cond_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/az;

    goto :goto_0
.end method

.method a(Landroid/support/v4/f/a;Landroid/support/v4/app/m$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/m$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    iget-object v0, p0, Landroid/support/v4/app/m;->v:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1369
    if-eqz v0, :cond_0

    .line 1370
    iget-object v1, p2, Landroid/support/v4/app/m$b;->c:Landroid/support/v4/app/ae$a;

    iput-object v0, v1, Landroid/support/v4/app/ae$a;->a:Landroid/view/View;

    .line 1373
    :cond_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->p:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 949
    :cond_0
    return-void

    .line 916
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/m$a;

    move-object v2, v0

    .line 917
    :goto_0
    if-eqz v2, :cond_0

    .line 918
    iget v0, v2, Landroid/support/v4/app/m$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 947
    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/m$a;->b:Landroid/support/v4/app/m$a;

    move-object v2, v0

    goto :goto_0

    .line 920
    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 923
    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 925
    iget-object v0, v2, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 924
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 928
    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 931
    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 934
    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 937
    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 940
    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 943
    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/m;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p3, :cond_8

    .line 271
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/m;->n:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/m;->p:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 273
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/m;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    iget v0, p0, Landroid/support/v4/app/m;->j:I

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Landroid/support/v4/app/m;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v0, p0, Landroid/support/v4/app/m;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget v0, p0, Landroid/support/v4/app/m;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/m;->g:I

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Landroid/support/v4/app/m;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Landroid/support/v4/app/m;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    :cond_2
    iget v0, p0, Landroid/support/v4/app/m;->h:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/m;->i:I

    if-eqz v0, :cond_4

    .line 287
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget v0, p0, Landroid/support/v4/app/m;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Landroid/support/v4/app/m;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_4
    iget v0, p0, Landroid/support/v4/app/m;->q:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/m;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 293
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget v0, p0, Landroid/support/v4/app/m;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/m;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    :cond_6
    iget v0, p0, Landroid/support/v4/app/m;->s:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/m;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 299
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Landroid/support/v4/app/m;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Landroid/support/v4/app/m;->t:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 306
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    if-eqz v0, :cond_10

    .line 307
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    move v2, v1

    move-object v3, v0

    .line 311
    :goto_0
    if-eqz v3, :cond_10

    .line 313
    iget v0, v3, Landroid/support/v4/app/m$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/support/v4/app/m$a;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 325
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 327
    if-eqz p3, :cond_c

    .line 328
    iget v0, v3, Landroid/support/v4/app/m$a;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Landroid/support/v4/app/m$a;->f:I

    if-eqz v0, :cond_a

    .line 329
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, v3, Landroid/support/v4/app/m$a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v0, v3, Landroid/support/v4/app/m$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    :cond_a
    iget v0, v3, Landroid/support/v4/app/m$a;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Landroid/support/v4/app/m$a;->h:I

    if-eqz v0, :cond_c

    .line 335
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v0, v3, Landroid/support/v4/app/m$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v0, v3, Landroid/support/v4/app/m$a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_c
    iget-object v0, v3, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 342
    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 343
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-object v5, v3, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 345
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 315
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 316
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 317
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 318
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 319
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 320
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 321
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 347
    :cond_d
    if-nez v0, :cond_e

    .line 348
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 351
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    :cond_f
    iget-object v3, v3, Landroid/support/v4/app/m$a;->a:Landroid/support/v4/app/m$a;

    .line 357
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 358
    goto/16 :goto_0

    .line 360
    :cond_10
    return-void

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/m;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/m;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 482
    return-object p0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Landroid/support/v4/app/m$a;

    invoke-direct {v0}, Landroid/support/v4/app/m$a;-><init>()V

    .line 518
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/m$a;->c:I

    .line 519
    iput-object p1, v0, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 520
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    .line 522
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Z)I

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 2

    .prologue
    .line 527
    new-instance v0, Landroid/support/v4/app/m$a;

    invoke-direct {v0}, Landroid/support/v4/app/m$a;-><init>()V

    .line 528
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/m$a;->c:I

    .line 529
    iput-object p1, v0, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 530
    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/m$a;)V

    .line 532
    return-object p0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/ad;

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/z;->b(Ljava/lang/Runnable;Z)V

    .line 680
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/support/v4/app/m;->n:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 702
    sget-boolean v0, Landroid/support/v4/app/z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    if-eqz v0, :cond_1

    .line 705
    iget v0, p0, Landroid/support/v4/app/m;->p:I

    if-gez v0, :cond_1

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/m;->a(I)V

    .line 712
    const/4 v0, 0x0

    .line 715
    sget-boolean v1, Landroid/support/v4/app/m;->a:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v1, v1, Landroid/support/v4/app/z;->n:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_f

    .line 716
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 717
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 719
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/m;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 721
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/m;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/m$b;

    move-result-object v0

    move-object v8, v0

    .line 724
    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    move v7, v0

    .line 725
    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 726
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/m;->c:Landroid/support/v4/app/m$a;

    move-object v6, v0

    .line 727
    :goto_3
    if-eqz v6, :cond_d

    .line 728
    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v5, v0

    .line 729
    :goto_4
    if-eqz v8, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 730
    :goto_5
    iget v0, v6, Landroid/support/v4/app/m$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/support/v4/app/m$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    iget v0, p0, Landroid/support/v4/app/m;->k:I

    move v7, v0

    goto :goto_1

    .line 725
    :cond_3
    iget v0, p0, Landroid/support/v4/app/m;->j:I

    move v1, v0

    goto :goto_2

    .line 728
    :cond_4
    iget v0, v6, Landroid/support/v4/app/m$a;->e:I

    move v5, v0

    goto :goto_4

    .line 729
    :cond_5
    iget v0, v6, Landroid/support/v4/app/m$a;->f:I

    move v2, v0

    goto :goto_5

    .line 732
    :pswitch_0
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 733
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 734
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 798
    :cond_6
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/m$a;->a:Landroid/support/v4/app/m$a;

    move-object v6, v0

    .line 799
    goto :goto_3

    .line 737
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 738
    iget v9, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 739
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 740
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_7
    if-ltz v4, :cond_c

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 742
    sget-boolean v10, Landroid/support/v4/app/z;->a:Z

    if-eqz v10, :cond_7

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_REPLACE: adding="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_7
    iget v10, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v10, v9, :cond_b

    .line 745
    if-ne v0, v3, :cond_8

    .line 746
    const/4 v0, 0x0

    iput-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 740
    :goto_8
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    goto :goto_7

    .line 748
    :cond_8
    iget-object v10, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_9

    .line 749
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    .line 751
    :cond_9
    iget-object v10, v6, Landroid/support/v4/app/m$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 753
    iget-boolean v10, p0, Landroid/support/v4/app/m;->l:Z

    if-eqz v10, :cond_a

    .line 754
    iget v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 755
    sget-boolean v10, Landroid/support/v4/app/z;->a:Z

    if-eqz v10, :cond_a

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bump nesting of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_a
    iget-object v10, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v10, v0, v1, v7}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_b
    move-object v0, v3

    goto :goto_8

    .line 763
    :cond_c
    if-eqz v3, :cond_6

    .line 764
    iput v5, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    .line 769
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 770
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 771
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 774
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 775
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 776
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/z;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 779
    :pswitch_4
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 780
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 781
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/z;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 784
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 785
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 786
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/z;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 789
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/m$a;->d:Landroid/support/v4/app/Fragment;

    .line 790
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 791
    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/z;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 801
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget-object v2, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    iget v2, v2, Landroid/support/v4/app/z;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/z;->a(IIIZ)V

    .line 803
    iget-boolean v0, p0, Landroid/support/v4/app/m;->l:Z

    if-eqz v0, :cond_e

    .line 804
    iget-object v0, p0, Landroid/support/v4/app/m;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/z;->b(Landroid/support/v4/app/m;)V

    .line 806
    :cond_e
    return-void

    :cond_f
    move-object v8, v0

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Landroid/support/v4/app/m;->p:I

    if-ltz v1, :cond_0

    .line 254
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Landroid/support/v4/app/m;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/m;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 258
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/support/v4/app/m;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
