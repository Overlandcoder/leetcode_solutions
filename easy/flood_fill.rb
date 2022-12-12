# https://leetcode.com/problems/flood-fill/

def flood_fill(image, sr, sc, color)
  return image if image[sr][sc] == color
  fill(image, sr, sc, color, image[sr][sc])
  image
end

def fill(image, sr, sc, color, old_color)
  return if (sr >= image.length || sr < 0 || sc >= image[0].length || sc < 0)
  return if image[sr][sc] != old_color

  image[sr][sc] = color
  fill(image, sr + 1, sc, color, old_color)
  fill(image, sr - 1, sc, color, old_color)
  fill(image, sr, sc + 1, color, old_color)
  fill(image, sr, sc - 1, color, old_color)
end
