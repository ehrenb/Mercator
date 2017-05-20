.class public Landroid/support/design/internal/c;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/c$c;,
        Landroid/support/design/internal/c$e;,
        Landroid/support/design/internal/c$f;,
        Landroid/support/design/internal/c$d;,
        Landroid/support/design/internal/c$b;,
        Landroid/support/design/internal/c$a;,
        Landroid/support/design/internal/c$h;,
        Landroid/support/design/internal/c$i;,
        Landroid/support/design/internal/c$g;,
        Landroid/support/design/internal/c$j;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/support/v7/view/menu/h;

.field c:Landroid/support/design/internal/c$b;

.field d:Landroid/view/LayoutInflater;

.field e:I

.field f:Z

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:I

.field final k:Landroid/view/View$OnClickListener;

.field private l:Landroid/support/design/internal/NavigationMenuView;

.field private m:Landroid/support/v7/view/menu/o$a;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Landroid/support/design/internal/c$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/c$1;-><init>(Landroid/support/design/internal/c;)V

    iput-object v0, p0, Landroid/support/design/internal/c;->k:Landroid/view/View$OnClickListener;

    .line 656
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/p;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/a$h;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    .line 102
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/support/design/internal/c$b;

    invoke-direct {v0, p0}, Landroid/support/design/internal/c$b;-><init>(Landroid/support/design/internal/c;)V

    iput-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/a$h;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Landroid/support/design/internal/c;->n:I

    .line 159
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    .line 91
    iput-object p2, p0, Landroid/support/design/internal/c;->b:Landroid/support/v7/view/menu/h;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    sget v1, Landroid/support/design/a$d;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/c;->j:I

    .line 95
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/design/internal/c;->h:Landroid/content/res/ColorStateList;

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->a(Z)V

    .line 235
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->a(Z)V

    .line 261
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 183
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 184
    check-cast p1, Landroid/os/Bundle;

    .line 185
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 189
    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v1, v0}, Landroid/support/design/internal/c$b;->a(Landroid/os/Bundle;)V

    .line 194
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v4/view/bb;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/support/v4/view/bb;->b()I

    move-result v0

    .line 271
    iget v1, p0, Landroid/support/design/internal/c;->o:I

    if-eq v1, v0, :cond_0

    .line 272
    iput v0, p0, Landroid/support/design/internal/c;->o:I

    .line 273
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/c;->o:I

    iget-object v2, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/support/v4/view/ae;->b(Landroid/view/View;Landroid/support/v4/view/bb;)Landroid/support/v4/view/bb;

    .line 278
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/design/internal/c;->m:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/design/internal/c;->m:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/j;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/c$b;->a(Landroid/support/v7/view/menu/j;)V

    .line 198
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Landroid/support/design/internal/c;->m:Landroid/support/v7/view/menu/o$a;

    .line 123
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 210
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0}, Landroid/support/design/internal/c$b;->a()V

    .line 118
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/support/design/internal/c;->n:I

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->a(Landroid/view/View;)V

    .line 203
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 243
    iput-object p1, p0, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->a(Z)V

    .line 245
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/c$b;->a(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/j;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    iget-object v1, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 170
    iget-object v2, p0, Landroid/support/design/internal/c;->l:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 171
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 173
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    if-eqz v1, :cond_1

    .line 174
    const-string v1, "android:menu:adapter"

    iget-object v2, p0, Landroid/support/design/internal/c;->c:Landroid/support/design/internal/c$b;

    invoke-virtual {v2}, Landroid/support/design/internal/c$b;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/design/internal/c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 248
    iput p1, p0, Landroid/support/design/internal/c;->e:I

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/c;->f:Z

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->a(Z)V

    .line 251
    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/design/internal/c;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/design/internal/c;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/design/internal/c;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
