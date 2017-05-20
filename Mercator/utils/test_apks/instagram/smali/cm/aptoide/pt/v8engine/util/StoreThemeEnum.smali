.class public final enum Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
.super Ljava/lang/Enum;
.source "StoreThemeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_AMBER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_BLACK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_BLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_BLUEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_BLUEGREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_BROWN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_DEEPPURPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_DIMGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_GOLD:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_GREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_GREENAPPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_GREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_HAPPYBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_INDIGO:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_LIGHTBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_LIGHTGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_LIGHTSKY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_LIME:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_MAGENTA:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_MAROON:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_MIDNIGHT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_ORANGE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_PINK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_RED:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_SEAGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_SILVER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_SLATEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_SPRINGGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_TEAL:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

.field public static final enum APTOIDE_STORE_THEME_YELLOW:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;


# instance fields
.field private final buttonLayout:I

.field private final checkmarkDrawable:I

.field private final color700tint:I

.field private final plusmarkDrawable:I

.field private storeAlphaColor:I

.field private storeCategoryDrawable:I

.field private storeHeader:I

.field private storeThemeResource:I

.field private storeViewGradient:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 21
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_DEFAULT"

    const/4 v2, 0x0

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefault:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_orange:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->default_color:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_orange:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_black:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->default_color_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_orange:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_orange:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_orange:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_GREEN"

    const/4 v2, 0x1

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultGreen:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_green:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->green:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_green:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_green:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->green_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_green:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_green:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_green:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 30
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_TEAL"

    const/4 v2, 0x2

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultTeal:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_teal:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->teal:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_slategray:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_slategray:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->teal_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_teal:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_teal:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_teal:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_TEAL:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 34
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_RED"

    const/4 v2, 0x3

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultRed:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_red:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->red:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_red:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_red:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->red_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_red:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_red:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_red:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_RED:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 38
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_INDIGO"

    const/4 v2, 0x4

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultIndigo:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_indigo:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->indigo:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_blue:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_blue:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->indigo_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_indigo:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_indigo:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_indigo:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_INDIGO:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 42
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_PINK"

    const/4 v2, 0x5

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultPink:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_pink:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->pink:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_pink:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_pink:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->pink_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_pink:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_pink:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_pink:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_PINK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 46
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_ORANGE"

    const/4 v2, 0x6

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultOrange:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_orange:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->orange:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_orange:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_orange:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->orange_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_orange:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_orange:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_orange:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_ORANGE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 51
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_BROWN"

    const/4 v2, 0x7

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBrown:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_brown:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->brown:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_maroon:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_maroon:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->brown_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_brown:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_brown:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_brown:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BROWN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 56
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_BLUEGRAY"

    const/16 v2, 0x8

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBluegrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_bluegrey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->bluegrey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_midnight:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_midnight:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->bluegrey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_bluegrey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_blue_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_blue_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 61
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_BLUEGREY"

    const/16 v2, 0x9

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBluegrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_bluegrey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->bluegrey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_midnight:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_midnight:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->bluegrey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_bluegrey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_blue_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_blue_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUEGREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 66
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_GREY"

    const/16 v2, 0xa

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultGrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_grey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->grey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_silver:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_silver:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->grey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_grey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 70
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_BLACK"

    const/16 v2, 0xb

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBlack:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_black:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->black:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_black:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_black:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->grey:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_black:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_black:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_black:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLACK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 74
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_DEEPPURPLE"

    const/16 v2, 0xc

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultDeepPurple:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_deeppurple:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->deeppurple:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_magenta:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_magenta:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->deeppurple_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_deeppurple:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_deep_purple:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_deep_purple:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEEPPURPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 79
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_AMBER"

    const/16 v2, 0xd

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultAmber:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_amber:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->amber:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_gold:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_gold:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->amber_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_amber:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_amber:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_amber:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_AMBER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 83
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_LIGHTGREEN"

    const/16 v2, 0xe

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLightgreen:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lightgreen:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lightgreen:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_springgreen:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_springgreen:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lightgreen_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lightgreen:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_light_green:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_light_green:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 88
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_LIME"

    const/16 v2, 0xf

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLime:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lime:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lime:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_springgreen:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_springgreen:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lime_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lime:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_lime:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_lime:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIME:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 92
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_LIGHTBLUE"

    const/16 v2, 0x10

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLightblue:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lightblue:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lightblue:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_lightsky:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_lightsky:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lightblue_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lightblue:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_light_blue:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_light_blue:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 99
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_SEAGREEN"

    const/16 v2, 0x11

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultGreen:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_green:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->green:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_green:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_green:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->green_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_green:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_green:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_green:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SEAGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 104
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_SLATEGRAY"

    const/16 v2, 0x12

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultTeal:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_teal:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->teal:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_slategray:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_slategray:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->teal_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_teal:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_teal:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_teal:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SLATEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 110
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_BLUE"

    const/16 v2, 0x13

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultIndigo:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_indigo:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->indigo:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_blue:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_blue:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->indigo_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_indigo:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_indigo:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_indigo:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 115
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_MAROON"

    const/16 v2, 0x14

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBrown:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_brown:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->brown:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_maroon:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_maroon:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->brown_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_brown:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_brown:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_brown:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MAROON:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 120
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_MIDNIGHT"

    const/16 v2, 0x15

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultBluegrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_bluegrey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->bluegrey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_midnight:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_midnight:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->bluegrey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_bluegrey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_blue_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_blue_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MIDNIGHT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 126
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_SILVER"

    const/16 v2, 0x16

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultGrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_grey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->grey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_silver:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_silver:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->grey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_grey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SILVER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 130
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_DIMGRAY"

    const/16 v2, 0x17

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultGrey:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_grey:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->grey:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_silver:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_silver:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->grey_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_grey:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_grey:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_grey:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DIMGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 135
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_MAGENTA"

    const/16 v2, 0x18

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultDeepPurple:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_deeppurple:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->deeppurple:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_magenta:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_magenta:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->deeppurple_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_deeppurple:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_deep_purple:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_deep_purple:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MAGENTA:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 141
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_YELLOW"

    const/16 v2, 0x19

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultAmber:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_amber:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->amber:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_gold:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_gold:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->amber_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_amber:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_amber:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_amber:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_YELLOW:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 145
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_GOLD"

    const/16 v2, 0x1a

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultAmber:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_amber:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->amber:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_gold:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_gold:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->amber_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_amber:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_amber:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_amber:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GOLD:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 150
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_SPRINGGREEN"

    const/16 v2, 0x1b

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLightgreen:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lightgreen:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lightgreen:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_springgreen:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_springgreen:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lightgreen_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lightgreen:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_light_green:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_light_green:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SPRINGGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 156
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_GREENAPPLE"

    const/16 v2, 0x1c

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLime:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lime:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lime:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_springgreen:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_springgreen:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lime_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lime:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_lime:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_lime:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREENAPPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 162
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_LIGHTSKY"

    const/16 v2, 0x1d

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLightblue:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lightblue:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lightblue:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_lightsky:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_lightsky:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lightblue_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lightblue:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_light_blue:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_light_blue:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTSKY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 168
    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const-string v1, "APTOIDE_STORE_THEME_HAPPYBLUE"

    const/16 v2, 0x1e

    sget v3, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefaultLightblue:I

    sget v4, Lcm/aptoide/pt/v8engine/R$color;->transparent_lightblue:I

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->lightblue:I

    sget v6, Lcm/aptoide/pt/v8engine/R$drawable;->custom_categ_lightsky:I

    sget v7, Lcm/aptoide/pt/v8engine/R$drawable;->gradient_lightsky:I

    sget v8, Lcm/aptoide/pt/v8engine/R$color;->lightblue_700:I

    sget v9, Lcm/aptoide/pt/v8engine/R$drawable;->button_border_lightblue:I

    sget v10, Lcm/aptoide/pt/v8engine/R$drawable;->ic_check_light_blue:I

    sget v11, Lcm/aptoide/pt/v8engine/R$drawable;->ic_plus_light_blue:I

    invoke-direct/range {v0 .. v11}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_HAPPYBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 19
    const/16 v0, 0x1f

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    const/4 v1, 0x0

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_TEAL:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_RED:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_INDIGO:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_PINK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_ORANGE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BROWN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUEGREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLACK:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEEPPURPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_AMBER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIME:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SEAGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SLATEGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_BLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MAROON:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MIDNIGHT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SILVER:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DIMGRAY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_MAGENTA:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_YELLOW:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GOLD:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_SPRINGGREEN:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_GREENAPPLE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_LIGHTSKY:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_HAPPYBLUE:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->$VALUES:[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeThemeResource:I

    .line 188
    iput p4, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeAlphaColor:I

    .line 189
    iput p5, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeHeader:I

    .line 190
    iput p6, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeCategoryDrawable:I

    .line 191
    iput p7, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeViewGradient:I

    .line 192
    iput p8, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->color700tint:I

    .line 193
    iput p9, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->buttonLayout:I

    .line 194
    iput p10, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->checkmarkDrawable:I

    .line 195
    iput p11, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->plusmarkDrawable:I

    .line 196
    return-void
.end method

.method public static get(I)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->values()[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    goto :goto_0
.end method

.method public static get(Lcm/aptoide/pt/model/v7/store/Store;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 3

    .prologue
    .line 210
    :try_start_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APTOIDE_STORE_THEME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    goto :goto_0
.end method

.method public static reverseOrdinal(I)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->values()[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->$VALUES:[Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    return-object v0
.end method


# virtual methods
.method public getButtonLayout()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->buttonLayout:I

    return v0
.end method

.method public getButtonLayoutDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getButtonLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCheckmarkDrawable()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->checkmarkDrawable:I

    return v0
.end method

.method public getColor700tint()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->color700tint:I

    return v0
.end method

.method public getPlusmarkDrawable()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->plusmarkDrawable:I

    return v0
.end method

.method public getStoreAlphaColor()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeAlphaColor:I

    return v0
.end method

.method public getStoreCategoryDrawable()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeCategoryDrawable:I

    return v0
.end method

.method public getStoreHeader()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeHeader:I

    return v0
.end method

.method public getStoreHeaderInt()I
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getStoreViewGradient()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeViewGradient:I

    return v0
.end method

.method public getThemeResource()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->storeThemeResource:I

    return v0
.end method
