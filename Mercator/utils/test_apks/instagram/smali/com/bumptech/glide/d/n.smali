.class public Lcom/bumptech/glide/d/n;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/n$1;,
        Lcom/bumptech/glide/d/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/j;

.field private final b:Lcom/bumptech/glide/d/a;

.field private final c:Lcom/bumptech/glide/d/l;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/d/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/d/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/n;-><init>(Lcom/bumptech/glide/d/a;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lcom/bumptech/glide/d/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/n$a;-><init>(Lcom/bumptech/glide/d/n;Lcom/bumptech/glide/d/n$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->c:Lcom/bumptech/glide/d/l;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->d:Ljava/util/HashSet;

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/d/n;->b:Lcom/bumptech/glide/d/a;

    .line 39
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/n;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private b(Lcom/bumptech/glide/d/n;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/d/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/d/n;->a:Lcom/bumptech/glide/j;

    .line 48
    return-void
.end method

.method public b()Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/d/l;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->c:Lcom/bumptech/glide/d/l;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/n;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getSupportFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/k;->a(Landroid/support/v4/app/y;)Lcom/bumptech/glide/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    if-eq v0, p0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/n;->a(Lcom/bumptech/glide/d/n;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->c()V

    .line 148
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/n;->b(Lcom/bumptech/glide/d/n;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->e:Lcom/bumptech/glide/d/n;

    .line 130
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->a()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->a()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->b()V

    .line 142
    return-void
.end method
