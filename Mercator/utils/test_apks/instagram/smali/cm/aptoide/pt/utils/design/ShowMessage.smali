.class public Lcm/aptoide/pt/utils/design/ShowMessage;
.super Ljava/lang/Object;
.source "ShowMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/utils/design/ShowMessage$SnackbarVisibility;
    }
.end annotation


# static fields
.field public static final DISMISSED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final VISIBLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcm/aptoide/pt/utils/design/ShowMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/design/ShowMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongSnackInternal(Landroid/app/Activity;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asLongSnack(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;Ljava/lang/String;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 160
    return-void
.end method

.method private static asLongSnackInternal(Landroid/app/Activity;I)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 228
    invoke-static {p0}, Lcm/aptoide/pt/utils/design/ShowMessage;->getViewFromActivity(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/app/Activity;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Extracted view from activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static asObservableSnack(Landroid/app/Activity;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/app/Fragment;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Fragment;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/support/v4/app/Fragment;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/support/v4/app/Fragment;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/view/View;I)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/view/View;Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asObservableSnack(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asSnack(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 196
    return-void
.end method

.method public static asSnack(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 277
    :cond_0
    return-void
.end method

.method public static asSnack(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 181
    return-void
.end method

.method public static asSnack(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 305
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Fragment;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 306
    return-void
.end method

.method public static asSnack(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 252
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/support/v4/app/Fragment;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 253
    return-void
.end method

.method public static asSnack(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 234
    return-void
.end method

.method public static asSnack(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 141
    return-void
.end method

.method public static asSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 120
    return-void
.end method

.method public static asSnack(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 100
    return-void
.end method

.method public static asSnack(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 43
    return-void
.end method

.method private static asSnackInternal(Landroid/app/Activity;I)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 203
    invoke-static {p0}, Lcm/aptoide/pt/utils/design/ShowMessage;->getViewFromActivity(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 204
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/app/Activity;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 281
    invoke-static {p0}, Lcm/aptoide/pt/utils/design/ShowMessage;->getViewFromActivity(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    goto :goto_0
.end method

.method private static asSnackInternal(Landroid/app/Activity;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 184
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnackInternal(Landroid/app/Activity;Ljava/lang/String;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/app/Activity;Ljava/lang/String;I)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcm/aptoide/pt/utils/design/ShowMessage;->getViewFromActivity(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/app/Fragment;I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/support/v4/app/Fragment;I)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/view/View;I)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/view/View;IILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/view/View;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackInternal(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method private static asSnackObservableInternal(Landroid/support/design/widget/Snackbar;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/Snackbar;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcm/aptoide/pt/utils/design/ShowMessage$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/utils/design/ShowMessage$1;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static asToast(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    return-void
.end method

.method public static asToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method

.method private static getViewFromActivity(Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_0
    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcm/aptoide/pt/utils/design/ShowMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find a view to bind this snack too"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_1
    return-object v0
.end method
